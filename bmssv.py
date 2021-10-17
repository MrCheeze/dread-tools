import glob
import struct

from crc64 import crc64

str_hashes = {
	0x19c88b27662fbed0: 'CGameBlackboard',
	0x346642b50beac5cb: 'Root',
	0xdc89e6d436bb122: 'hashSections',
	0xf7a3936f450614bd: 'CBlackboard::CSection',
	0xd7278d3c2cc621ed: 'dctProps',
	0x291e3f130f064f1d: 'int',
	0x799781f713e7d4e0: 'base::global::CRntString',
	0x937459ba5ed68a51: 'float',
	0x6a0c7bde338b1a2b: 'bool',
	0xcf6ad2b17894e025: 'base::global::CRntVector<base::global::CStrId>',
	0xf9365aab69f858f0: 'CMinimapManager::TGlobalMapIcons',
	0xd070405c1ff026e9: 'sIconID',
	0xfe5e4df5b4c719a: 'vIconPos',
	0xf450e55a3654aabd: 'base::spatial::CAABox2D',
	0xaf0f535c4b859612: 'Min',
	0x4de23a595aeca5d4: 'Max',
	0x24873ff4b4e3c57e: 'base::global::CRntVector<EMapTutoType>',
	0xbf34f79bba0deaf6: 'base::global::CStrId',
	0xd2dcbe71a41ce64d: 'GUI::CMissionLog::TMissionLogEntries',
	0x9884224a42cccf72: 'eEntryType',
	0xc13f58ff800ad931: 'sLabelText',
	0x55a2cca8471af58e: 'vCaptionsIds',
	0xb97cd894d76cacd6: 'unsigned',
	0x7059995f8c21c448: 'dctDeltaValues',
	0x29c6b98e3d947388: 'base::global::CRntVector<bool>',
	0xf25c7f4438de97c8: 'base::global::CRntSmallDictionary<base::global::CStrId, base::spatial::CAABox2D>',
	0x264cb5f3a10c500c: 'TEnabledOccluderCollidersMap',
	0x9f11b59fa3826525: 'collision',
	0x76ea98d6172d491d: 'CBreakableTileGroupComponent::TActorTileStatesMap',
	0xfa551d1d6c4c30f9: 'fX',
	0x497b51a36feb6f96: 'fY',
	0xe81bcfd2adbd86a0: 'eTileType',
	0xbff7b7a5d1bd647a: 'uState',
	0x5b7f603b163adfca: 'base::global::CRntSmallDictionary<base::global::CStrId, bool>',
	0x8d6d71ad17bc9217: 'minimapGrid::TMinimapVisMap',
	0x26de4835f38bb831: 'base::global::TRntString256',
	0xd7b335721099bf9: 'base::math::CVector3D',
	0x59924ac57dd96af4: 'base::math::CVector2D',
	0x1beb814e510d45bf: 'CMinimapManager::TCustomMarkerDataMap',
	0x37307f0ffeba3f3: 'nMarkerID',
	0xa1086f38831bf379: 'eType',
	0xddbbb4906833a8d1: 'vPos',
	0xb2800292066be2bf: 'sTargetID',
	0x38312bbd75f7c279: 'nTargetSlot',
	0x7717897117b4152c: 'collision_opened',
	0xc2115508c8c0ab7b: 'trapblockfinal',
	0xf8d406e80c856725: 'CDoorLifeComponent::SState',
	0x25ad7ef151e28fbf: 'TCheckpointOffset',
	0x70888bf0a2f0c1b7: 'strCheckpointID',
	0xc2f06449f48188aa: 'vOffsetPos',
	0x7a56d4d3df3dcdac: 'vOffsetAng',
	0xfa25e60b822f6d2f: 'collision_closed',
	0x807cd40be6afa3c1: 'collision_close',
	0x5a5ca89c6faf836c: 'CBlackboard',
}

def readstring(f):
    s = b''
    while True:
        c = f.read(1)
        if c != b'\x00':
            s += c
        else:
            break
    return s.decode('ascii')

def readobject(f, indent):
    hashbytes = f.read(8)
    strhash = int.from_bytes(hashbytes, 'little')

    if strhash in str_hashes:
        dtype = str_hashes[strhash]
        print('\t'*indent, '--- %s ---' % dtype)

        if dtype == 'CBlackboard':
            print('\t'*indent, f.read(4))
            readobject(f, indent)
        elif dtype == 'Root':
            rootcount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, rootcount)
            for i in range(rootcount):
                readobject(f, indent+1)
                print('\t'*(indent+1), ',')
        elif dtype == 'hashSections':
            sectioncount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, sectioncount)
            for i in range(sectioncount):
                print('\t'*(indent+1), readstring(f))
                readobject(f, indent+1)
                print('\t'*(indent+1), ',')
        elif dtype == 'CBlackboard::CSection':
            print('\t'*indent, f.read(4))
            readobject(f, indent)
        elif dtype == 'dctProps':
            propcount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, propcount)
            for i in range(propcount):
                print('\t'*(indent+1), readstring(f))
                readobject(f, indent+1)
                print('\t'*(indent+1), ',')
        elif dtype == 'bool':
            print('\t'*indent, f.read(1))
        elif dtype == 'unsigned':
            print('\t'*indent, f.read(4))
            
        elif dtype == 'CGameBlackboard':
            print('\t'*indent, f.read(4))
            readobject(f, indent)
        elif dtype == 'base::global::CStrId':
            print('\t'*indent, readstring(f))
        elif dtype == 'int':
            print('\t'*indent, f.read(4))
        elif dtype == 'base::global::CRntString':
            print('\t'*indent, readstring(f))
        elif dtype == 'GUI::CMissionLog::TMissionLogEntries':
            entrycount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, entrycount)
            for i in range(entrycount):
                print('\t'*(indent+1), f.read(4))
                readobject(f, indent+1)
                print('\t'*(indent+1), ',')
        elif dtype == 'eEntryType':
            print('\t'*indent, f.read(4))
            readobject(f, indent)
        elif dtype == 'sLabelText':
            print('\t'*indent, readstring(f))
            readobject(f, indent)
        elif dtype == 'vCaptionsIds':
            captioncount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, captioncount)
            for i in range(captioncount):
                print('\t'*(indent+1), readstring(f))
                print('\t'*(indent+1), ',')
        elif dtype == 'base::global::CRntVector<base::global::CStrId>':
            strcount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, strcount)
            for i in range(strcount):
                print('\t'*(indent+1), readstring(f))
                print('\t'*(indent+1), ',')
        elif dtype == 'CMinimapManager::TGlobalMapIcons':
            scenecount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, scenecount)
            for i in range(scenecount):
                print('\t'*(indent+1), readstring(f))
                iconcount = int.from_bytes(f.read(4), 'little')
                print('\t'*(indent+1), iconcount)
                for j in range(iconcount):
                    print('\t'*(indent+2), f.read(4))
                    readobject(f, indent+2)
                    readobject(f, indent+2)
                    print('\t'*(indent+2), ',')
                print('\t'*(indent+1), ',')
        elif dtype == 'sIconID':
            print('\t'*indent, readstring(f))
        elif dtype == 'vIconPos':
            print('\t'*indent, struct.unpack('<ff', f.read(8)))
        elif dtype == 'base::spatial::CAABox2D':
            print('\t'*indent, f.read(4))
            readobject(f, indent)
            readobject(f, indent)
        elif dtype == 'Min':
            print('\t'*indent, struct.unpack('<ff', f.read(8))) 
        elif dtype == 'Max':
            print('\t'*indent, struct.unpack('<ff', f.read(8))) 
        elif dtype == 'base::global::CRntVector<EMapTutoType>':
            tutocount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, tutocount)
            for i in range(tutocount):
                print('\t'*(indent+1), f.read(4))
                print('\t'*(indent+1), ',')
        elif dtype == 'float':
            print('\t'*indent, struct.unpack('<f', f.read(4))[0])
        elif dtype == 'dctDeltaValues':
            print('\t'*indent, f.read(4))
        elif dtype == 'base::global::CRntVector<bool>':
            boolcount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, boolcount)
            for i in range(boolcount):
                print('\t'*(indent+1), f.read(1))
                print('\t'*(indent+1), ',')
        elif dtype == 'TEnabledOccluderCollidersMap':
            unkcount1 = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, unkcount1)
            print('\t'*indent, readstring(f))
            print('\t'*indent, f.read(4))
            readobject(f, indent)
            for i in range(unkcount1 - 1): # uhhhh probably wrong
                print('\t'*(indent+1), readstring(f))
                unkcount2 = int.from_bytes(f.read(4), 'little')
                print('\t'*(indent+1), unkcount2)
                for j in range(unkcount2):
                    print('\t'*(indent+2), f.read(8))
                    print('\t'*(indent+2), ',')
                print('\t'*(indent+1), ',')
        elif dtype == 'collision':
            pass # likewise
        elif dtype == 'base::global::CRntSmallDictionary<base::global::CStrId, bool>':
            entrycount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, entrycount)
            for i in range(entrycount):
                print('\t'*(indent+1), readstring(f))
                print('\t'*(indent+1), f.read(1))
                print('\t'*(indent+1), ',')
        elif dtype == 'CBreakableTileGroupComponent::TActorTileStatesMap':
            tilegroupcount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, tilegroupcount)
            for i in range(tilegroupcount):
                print('\t'*(indent+1), readstring(f))
                tilecount = int.from_bytes(f.read(4), 'little')
                print('\t'*(indent+1), tilecount)
                for j in range(tilecount):
                    statecount = int.from_bytes(f.read(4), 'little')
                    print('\t'*(indent+2), statecount)
                    for k in range(statecount):
                        readobject(f, indent+3)
                        print('\t'*(indent+3), ',')
                    print('\t'*(indent+2), ',')
                print('\t'*(indent+1), ',')
        elif dtype == 'fX':
            print('\t'*indent, struct.unpack('<f', f.read(4))[0])
        elif dtype == 'fY':
            print('\t'*indent, struct.unpack('<f', f.read(4))[0])
        elif dtype == 'eTileType':
            print('\t'*indent, f.read(4))
        elif dtype == 'uState':
            print('\t'*indent, f.read(4))
        elif dtype == 'base::global::TRntString256':
            print('\t'*indent, readstring(f))
        elif dtype == 'base::global::CRntSmallDictionary<base::global::CStrId, base::spatial::CAABox2D>':
            entrycount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, entrycount)
            for i in range(entrycount):
                print('\t'*(indent+1), readstring(f))
                print('\t'*(indent+1), f.read(4))
                readobject(f, indent+1)
                readobject(f, indent+1)
                print('\t'*(indent+1), ',')
        elif dtype == 'minimapGrid::TMinimapVisMap':
            somethingcount = int.from_bytes(f.read(4), 'little')
            print('\t'*indent, somethingcount)
            for i in range(somethingcount):
                print('\t'*(indent+1), f.read(4))
                print('\t'*(indent+1), readstring(f))
                print('\t'*(indent+1), ',')
        elif dtype == 'base::math::CVector3D':
            print('\t'*indent, struct.unpack('<fff', f.read(12)))
        elif dtype == 'base::math::CVector2D':
            print('\t'*indent, struct.unpack('<ff', f.read(8)))
        elif dtype == 'CMinimapManager::TCustomMarkerDataMap':
            print('\t'*indent, f.read(4))
            print('\t'*indent, f.read(4))
            print('\t'*indent, f.read(4))
            readobject(f, indent)
        elif dtype == 'nMarkerID':
            print('\t'*indent, f.read(4))
            readobject(f, indent+1)
        else:
            print('unimplemented dtype '+dtype+' - '+hex(strhash))
            print(f.read(8))
            print()
            1/0
    else:
        print('unknown datatype hash '+hex(strhash))
        print(f.read(8))
        print()
        1/0

for filename in glob.glob('savedata/**/samus.bmssv',recursive=True):
    print(filename)

    f=open(filename,'rb')
    readobject(f, 0)
    leftoverdata = f.read(8)
    if leftoverdata != b'':
        print('leftover data', leftoverdata)
        1/0
