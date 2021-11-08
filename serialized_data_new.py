import glob
from crc64 import crc64
import json
import pprint
import struct

hashes = {}

def registerHash(s):
    hashes[crc64(s)] = s

for line in open('exefs_strings.txt'):
    registerHash(line.strip())
for line in open('bmscd_strings.txt'):
    registerHash(line.strip())
    registerHash(line.strip()[1:])
    
all_types = json.load(open('mercury-engine-data-structures/mercury_engine_data_structures/dread_types.json'))

for className in all_types:
    registerHash(className)
    for fieldName in all_types[className]["fields"]:
        registerHash(fieldName)

def readHash(f):
    ret = hashes[int.from_bytes(f.read(8), 'little')]
    return ret

def readInt(f):
    return int.from_bytes(f.read(4), 'little', signed=True)

def readDict(f, readKey, readValue, *args):
    entryCount = readInt(f)
    obj = {}
    for _ in range(entryCount):
        k = readKey(f)
        v = readValue(f, *args)
        obj[k] = v
    return obj

def readStr(f):
    s = ''
    c = ''
    while c != '\x00':
        s = s + c
        c = f.read(1).decode('ascii')
    return s

def readPtr(f):
    className = readHash(f)
    obj = {'Class': className}
    obj['Data'] = readObject(f, className)
    return obj

def readFloat(f):
    return struct.unpack('<f', f.read(4))[0]

def readList(f, readElement, *args):
    entryCount = readInt(f)
    obj = []
    for _ in range(entryCount):
        obj.append(readElement(f, *args))
    return obj

def readVec2D(f):
    return struct.unpack('<ff', f.read(8))

def readVec3D(f):
    return struct.unpack('<fff', f.read(12))

def readBool(f):
    return struct.unpack('<?', f.read(1))[0]

def readUnsigned(f):
    return int.from_bytes(f.read(4), 'little', signed=False)

def readBlob(f):
    entryCount = readInt(f)
    return list(f.read(entryCount))

def readEnum(f, enumName):
    
    value = readInt(f)
    dct = all_types[enumName]['values']
    
    enumValKeys = [key for key in dct if (dct[key] == value)]

    assert len(enumValKeys) == 1
    
    return enumValKeys[0]

def readStandardObject(f, className):
    fieldCount = readInt(f)

    obj = {}
    
    for _ in range(fieldCount):
        fieldName = readHash(f)
        fieldType = None
        
        c = className
        while fieldType is None:
            if fieldName in all_types[c]['fields']:
                fieldType = all_types[c]['fields'][fieldName]
            else:
                c = all_types[c]['parent']
            
        obj[fieldName] = readObject(f, fieldType)
        
    return obj

def readObject(f, className):
    
    if className == 'base::reflection::CTypedValue':
        val = readPtr(f)
    elif className == 'float':
        val = readFloat(f)
    elif className in ['base::global::CStrId','base::global::CRntString','base::global::TRntString256']:
        val = readStr(f)
    elif className in ['base::math::CVector2D','math::CVector2D']:
        val = readVec2D(f)
    elif className in ['base::math::CVector3D','math::CVector3D']:
        val = readVec3D(f)
    elif className == 'bool':
        val = readBool(f)
    elif className == 'int':
        val = readInt(f)
    elif className == 'unsigned':
        val = readUnsigned(f)
    elif className == 'SCustomData':
        val = readBlob(f)
        
    elif className.startswith('base::global::CRntVector<'):
        internalClassName = className.replace('base::global::CRntVector<','',1)[:-1]
        val = readList(f, readObject, internalClassName)
    elif className.startswith('base::global::CRntSmallDictionary<base::global::CStrId, '):
        internalClassName = className.replace('base::global::CRntSmallDictionary<base::global::CStrId, ','',1)[:-1]
        val = readDict(f, readStr, readObject, internalClassName)
        
    elif className == 'GUI::CMissionLog::TMissionLogEntries':
        val = readList(f, readStandardObject, 'CGlobalEventManager::SMissionLogEntry')
    elif className == 'TSectionContainer':
        val = readDict(f, readStr, readPtr)
    elif className == 'CMinimapManager::TGlobalMapIcons':
        val = readDict(f, readStr, readList, readStandardObject, 'CMinimapManager::SAreaIconInfo')
    elif className == 'TEnabledOccluderCollidersMap':
        val = readDict(f, readStr, readList, readHash)
    elif className == 'CBreakableTileGroupComponent::TActorTileStatesMap':
        val = readDict(f, readStr, readList, readStandardObject, 'CBreakableTileGroupComponent::SMinimapTileState')
    elif className == 'minimapGrid::TMinimapVisMap':
        val = readDict(f, readInt, readStr)
    elif className == 'CMinimapManager::TCustomMarkerDataMap':
        val = readDict(f, readInt, readStandardObject, 'CMinimapManager::SMarkerData')
        
    elif className in all_types and all_types[className]['values']:
        val = readEnum(f, className)
    else:
        val = readStandardObject(f, className)

    return val
        

def parseFile(f):
    fileType = readHash(f)
    unk = readInt(f)
    root = readHash(f)
    rootData = readObject(f, fileType)

    fileData = {
        "FileType": fileType,
        "Unk": unk,
        root: rootData
    }
    assert f.read() == b''
    return fileData

for filename in glob.glob('savedata/**/*.bmssv', recursive=True):
    print(filename)

    f=open(filename,'rb')
    f2=open(filename.replace('.bmssv','.json'),'w')

    parsed = parseFile(f)
    json.dump(parsed, f2, sort_keys=False, indent=2)
    
    f.close()
    f2.close()
