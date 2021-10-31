from crc64 import crc64
import struct
import pprint
import math
import re

f=open('exefs_strings.txt')
guess_chars = [',', ' ', '<', '>', ':', '_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
all_hashes = {}
def guess(s):
    all_hashes[crc64(s)] = s
for line in f:
    line = line.rstrip('\n')
    guess(line)
    if line.startswith('m_'):
        line = line[2:]
        guess(line)
f.close()
for c1 in guess_chars:
    guess(c1)
    for c2 in guess_chars:
        guess(c1+c2)
        for c3 in guess_chars:
            guess(c1+c2+c3)
ghidra_types = {}
f=open('ghidra_serialization_dump.txt','r')
for line in f:
    line = line.rstrip('\n')
    match = re.match(r'(.*) \(([^0-9].*)\)$', line)
    if match:
        guess(match.group(1))
        if not re.match(r'^[0-9]+$', match.group(2)) and match.group(2) != 'None':
            if match.group(1) not in ghidra_types or match.group(2) != 'base::global::CStrId':
                ghidra_types[match.group(1)] = match.group(2)
f.close()

def isClassHash(f):
    checksum = int.from_bytes(f.read(8), 'little', signed=False)
    f.seek(-8, 1)
    return all_hashes[checksum] if checksum in all_hashes else None

def readHashedStr(f):
    return all_hashes[int.from_bytes(f.read(8), 'little', signed=False)]

def readFileHeader(f):
    header = {}
    header['fileType'] = readHashedStr(f)
    header['unk'] = struct.unpack('<hbb',f.read(4))
    return header

def readInt(f):
    return int.from_bytes(f.read(4), 'little', signed=True)

def readStr(f):
    s=''
    char=''
    while char != '\x00':
        s += char
        char = f.read(1).decode('ascii')
    return s

def readList(f, valueReaderFunc, *args):
    count = readInt(f)
    vec = []
    for i in range(count):
        vec.append(valueReaderFunc(f, *args))
    return vec

def readDict(f, valueReaderFunc, *args):
    count = readInt(f)
    dct = {}
    for i in range(count):
        name = readStr(f)
        value = valueReaderFunc(f, *args)
        dct[name] = value
    return dct

def readVec3f(f):
    return struct.unpack('<fff',f.read(12))

def readByte(f):
    return int.from_bytes(f.read(1), 'little', signed=True)

def readFloat(f):
    return struct.unpack('<f',f.read(4))[0]

def readVec2f(f):
    return struct.unpack('<ff',f.read(8))

def readStrListOrFieldListListOrStr(f):
    test = f.read(4)

    if 0 <= int.from_bytes(test, 'little', signed=True) < 0x100:
        if isClassHash(f):
            if isClassHash(f)[0].isupper():
                f.seek(-4, 1)
                return readList(f, readObject)
            else:
                f.seek(-4, 1)
                return readFieldList(f)
        else:
            test2 = f.read(4)
            if 0 <= int.from_bytes(test, 'little', signed=True) < 0x100 and isClassHash(f):
                f.seek(-8, 1)
                return readList(f, readFieldList)
            else:
                f.seek(-8, 1)
                return readList(f, readStr)
    else:
        f.seek(-4, 1)
        return readStr(f)

def readFieldList(f):
    fieldCount = readInt(f)
    fields = {}
    for i in range(fieldCount):
        fieldName = readHashedStr(f)
        fieldType = re.match(r'[a-z]*[0-9]*',fieldName).group(0)
        ghidraType = ghidra_types[fieldName] if fieldName in ghidra_types else None

        '''if fieldName in ['pScenario','pComponents','rLogicCamera','InnerValue','sSound1','sSound2','sSound3','sSound4']:
            value = readObject(f)
        elif fieldName in ['vLayerFiles','tForbiddenEdgesSpawnPoints','aVignettes','tEmmyForbiddenShapes','tEmmyLockedDoors','tEmmyPhase2DeactivatedActors','vDoorsToChange','tNeighboursIds','vEnvironmentFXActors','tDynamicSpawnPositions','tXCellTransformTargets','tForbiddenLogicShapes','tWeightedLogicShapeIDs','tEndLandmarks','tLogicShapesToAvoidCornerReposition','vSpawnPointActors','vctExtraInvolvedSubareas']:
            value = readList(f, readStr)
        elif fieldName in ['rEntitiesLayer','oPolyCollection','oHeatConfig','oCoolConfig','logicPath','oFreezeConfig','oConfig','oCameraRail']:
            value = readFieldList(f)
        elif fieldName == 'dctSublayers':
            value = readDict(f, readFieldList)
        elif fieldName == 'dctActors':
            value = readDict(f, readObject)
        elif fieldName in ['oActorDefLink','vTargetToLink','vHidderLink','oActivatableObj']:
            value = readStr(f)
        elif fieldName in ['vPos','vAng','vScale']:
            value = readVec3f(f)
        elif fieldName in ['vLogicActions','tEmmyWeightedShapes','tOverrideGrabPosition','tOverrideDeathPosition','tAutoForbiddenEdges','tAutoGlobalSmartLinks','vctOnBeforeCutsceneStartsLA','vctOnAfterCutsceneEndsLA','oSPRTuto.m_vAfterTutoLogicActions','vAfterTutoLogicActions']:
            value = readList(f, readObject)
        elif fieldName in ['vPolys', 'oSegmentData','tEmmyStartPointsInfo','vThermalDoors','tNodes','tFallbackPaths','tFloatingEntities','tSubPaths','vctExtraInvolvedActors','tSubRails','vActivatables']:
            value = readList(f, readFieldList)
        elif fieldName == 'tCaptionList':
            value = readDict(f, readList, readStr)
        elif fieldName == 'sDoorState':
            value = readInt(f)
        elif fieldName == 'vWaterLevelChanges':
            value = readList(f, readFloat)
        elif fieldName == 'vReactionDirection':
            value = readVec2f(f)
        elif fieldName == 'vctCutscenesOffsets':
            value = readList(f, readVec3f)
        elif fieldName == 'vctVisibilityPerTake':
            value = readList(f, readByte)
            
        elif fieldType == 's' or fieldType == 'wp' or fieldType == 'lnk':
            value = readStr(f)
        elif fieldType == 'b':
            value = readByte(f)
        elif fieldType == 'v3':
            value = readVec3f(f)
        elif fieldType == 'f':
            value = readFloat(f)
        elif fieldType == 'i' or fieldType == 'e':
            value = readInt(f)
        elif fieldType == 'lst':
            value = readList(f, readObject)
        elif fieldType == 'v2':
            value = readVec2f(f)
        elif fieldType == 'vo':
            value = readList(f, readFieldList)
        elif fieldType == 'vect':
            value = readList(f, readStr)
            

        elif fieldName == 'pLogicShape' and fieldCount == 2:
            value = readObject(f)
        elif fieldName == 'pLogicShape' and fieldCount == 4:
            value = readStr(f)'''

        print(fieldName)
        if isClassHash(f):
            value = readObject(f)
        elif fieldName == 'dctSublayers':
            value = readDict(f, readFieldList)
        elif fieldName == 'dctActors':
            value = readDict(f, readObject)
        elif ghidraType == 'base::math::CVector3D' and fieldType in ['v','v3']:
            value = readVec3f(f)
        elif ghidraType == 'bool' and fieldType == 'b':
            value = readByte(f)
        elif fieldType == 'f' and fieldType == 'f':
            value = readFloat(f)
        elif ghidraType == 'int' and fieldType == 'i':
            value = readInt(f)
        elif ghidraType is None and fieldType == 'e':
            value = readInt(f)
        elif ghidraType is None and fieldType == 'lst':
            value = readList(f, readObject)
        elif ghidraType == 'base::math::CVector2D' and fieldType == 'v2':
            value = readVec2f(f)
        elif fieldName == 'tCaptionList':
            value = readDict(f, readList, readStr)
            
        elif fieldType in ['s','v','a','t','wp','lnk','o','r','p']:
            value = readStrListOrFieldListListOrStr(f)
            
        else:
            print(fieldName, fieldType, ghidraType)
            raise Exception("Don't know how to parse field: "+fieldName)
        print(value)
        fields[fieldName] = value
    return fields

def readCRntFile(f):
    data = {}
    data['unk'] = readInt(f)
    data['data'] = readFieldList(f)
    return data

def readObject(f):
    o = {}
    className = readHashedStr(f)
    o['class'] = className
    if className == 'base::global::CRntSmallDictionary<base::global::CStrId, CActorComponent*>':
        data = readDict(f, readObject)
    elif className == 'void':
        data = None
    elif className == 'base::global::CRntFile':
        data = readCRntFile(f)
    elif className == 'base::global::CFilePathStrId':
        data = readStr(f)
    elif re.match(r'([A-Za-z]+::)*[A-Z][A-Za-z0-9]+$', className):
        data = readFieldList(f)
    else:
        raise Exception("Don't know how to parse class: "+className)
    return o

def readFile(f):
    data = {}
    data['header'] = readFileHeader(f)
    data['data'] = readObject(f)
    return data

if __name__ == "__main__":
    f=open('unpacked/maps/s010_cave/s010_cave/maps/levels/c10_samus/s010_cave/s010_cave.brfld','rb')
    try:
        print(readFile(f))
    finally:
        print(hex(f.tell()))
        print(f.read(32))
