from crc64 import crc64
import struct
import pprint
import math
import re
import pprint
import json
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Polygon
import numpy as np
from camera import getPolygons
import hashlib

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

        if fieldName in ['pSubareaManager','vSubareaSetups','vCharclassGroups']:
            value = readObject(f)
        elif fieldName in ['sId','sSetupId','sCharclassGroupId']:
            value = readStr(f)
        elif fieldName == 'vSubareaConfigs':
            value = readList(f, readObject)
        elif fieldName in ['bDisableSubArea','bIgnoreMetroidCameraOffsets']:
            value = readByte(f)
        elif fieldName == 'fCameraZDistance':
            value = readFloat(f)
        elif fieldName in ['asItemsIds','vsCameraCollisionsIds','vsCutscenesIds','vsCharClassesIds']:
            value = readList(f, readStr)
            
        else:
            print(fieldName, fieldType, ghidraType)
            raise Exception("Don't know how to parse field: "+fieldName)
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
    if re.match(r'base::global::CRntVector<std::unique_ptr<.*>>', className):
        data = readList(f, readObject)
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
    o['data'] = data
    #return o
    return data

def readFile(f):
    data = {}
    data['header'] = readFileHeader(f)
    root = readHashedStr(f)
    rootData = readFieldList(f)
    data[root] = rootData
    #return data
    return rootData


def randcolor(seedSet):
    return [x/300.0 for x in hashlib.md5(bytes(str(sorted(seedSet)),'ascii')).digest()[0:3]]

if __name__ == "__main__":

    for level in ['s010_cave','s020_magma','s030_baselab','s040_aqua','s050_forest','s060_quarantine','s070_basesanc','s080_shipyard','s090_skybase']:

        cams = {}

        print(level)
    
        f=open('unpacked/maps/%s/%s/maps/levels/c10_samus/%s/%s.brsa'%(level,level,level,level),'rb')
        subareaData = readFile(f)
        f.close()
        
        f2=open('subareas_%s.json'%level,'w')
        json.dump(subareaData, f2, indent=2, sort_keys=False)
        f2.close()

        for setup in subareaData['pSubareaManager']['vSubareaSetups']:
            for config in setup['vSubareaConfigs']:
                for cam in config['vsCameraCollisionsIds']:
                    if cam not in cams:
                        cams[cam] = set()
                    if config['sCharclassGroupId'] != '':
                        cams[cam].add(config['sCharclassGroupId'])



        distinct_labels = set()
        handles = []

        polygons = getPolygons(level)
        plt.plot(0, 0)
        for p in polygons:
            x1,y1,x2,y2 = polygons[p]['bounds']
            if abs(x1) > 59999 or abs(y1) > 59999 or abs(x2) > 59999 or abs(y2) > 59999:
                continue
            vertices = np.array(polygons[p]['vertices'])[:,:2]
            if p not in cams:
                continue
            c = randcolor(cams[p])
            patch = Polygon(vertices,linewidth=1,edgecolor=c,facecolor=(c[0], c[1], c[2], 0.1), label=sorted(cams[p]))
            plt.gca().add_patch(patch)
            plt.text((x1+x2)/2, (y1+y2)/2, p[17:], color=c, ha='center', size='x-small')

            if tuple(sorted(cams[p])) not in distinct_labels:
                distinct_labels.add(tuple(sorted(cams[p])))
                handles.append(patch)

        plt.legend(handles=handles, prop={'size': 6})

        for cam in sorted(cams):
            print(cam, cams[cam])

        '''if level == 's010_cave':
            
            x, y = (12472.333984375, -7471.916015625)
            vertices = [
                (x-772.333984375, y+671.916015625),
                (x-1576.49609375, y+671.916015625),
                (x-1572.333984375, y-528.083984375),
                (x-1572.333984375, y-978.08349609375),
                (x+1327.666015625, y-978.083984375),
                (x+1327.666015625, y+1071.916015625),
                (x+27.666015625, y+1071.916015625),
            ]
            plt.gca().add_patch(Polygon(vertices, facecolor=(1.0,0.0,0.0,0.1), edgecolor='black'))

            x, y = (11202.1640625, -7111.60009765625)
            vertices = [
                (x+1297.8359375, y+711.60009765625),
                (x+2397.8359375, y+711.60009765625),
                (x+2397.8359375, y+1111.60009765625),
                (x-402.1640625, y+1111.60009765625),
                (x-402.1640625, y+311.60009765625),
                (x+497.8359375, y+311.60009765625),
            ]
            plt.gca().add_patch(Polygon(vertices, facecolor=(0.0,1.0,0.0,0.1), edgecolor='black'))
            plt.show()'''

        plt.savefig('subareas_%s.png'%level, dpi=150, bbox_inches='tight')
        plt.close()
