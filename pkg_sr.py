import struct
import glob
import os

from crc64 import crc32

checksums = {}

replacements = [
("CScenario",".brfld",".rfld"),
("CScenarioLogicImporter",".bmsld",".msld"),
("engine::scene::CSceneSlot",".bmssd",".mssd"),
("CBreakableTileLoader",".bmsbk",".msbk"),
("CEnvironmentVisualPresets",".brev",".rev"),
("CEnvironmentSoundPresets",".bres",".res"),
("CEnvironmentMusicPresets",".brem",".rem"),
("game::logic::collision::CCollisionImporter",".bmscc",".mscc"),
("CSubAreaManager",".brsa",".rsa"),
("navmesh::CNavMesh",".bmsnav",".msnav"),
("CActorDef",".bmsad",".msad"),
("CAction",".bmsact",".msact"),
("CActionSet",".bmsas",".msas"),
("behaviortree::CBehaviorTree",".bmtre",".mbtre"),
("CCutSceneDef",".bmscu",".mscu"),
("CLuaLibraryManager",".lc",".lua"),
("game::logic::collision::CCollisionImporter",".bmscd",".mscd"),
("navmesh::CDynamicSmartLinkRules",".bmslink",".mslink"),
("navmesh::CDynamicSmartLinkGroup",".bmslgroup",".mslgroup"),
("GUI::CDisplayObjectContainer",".bmscp",".mscp"),
("GUI::CGUIManager::SkinContainer",".bmssk",".mssk"),
("GUI::CGUIManager::ShapeContainer",".bmssh",".mssh"),
("GUI::CGUIManager::SpriteSheetContainer",".bmsss",".msss"),
("CSubAreaManager",".brsa",".rsa"),
("sound::CAudioPresets",".bapd",".apd"),
("CPlaythroughDef",".bptdef",".ptdef"),
("CPlaythrough",".bptdat",".ptdat"),
("CBlackboard",".bchkdat",".chkdat"),
("CLightManager",".bldef",".ldef"),
("base::file::CPack",".pkg",".pfg"),
("base::file::CPackSetManager",".bpsi",".psi"),
("base::snd::CSoundGroupManager",".blsnd",".lsnd"),
("sound::CMusicManager",".bmdefs",".mdefs"),
("CShotAudioWeaponPresets",".brspd",".rspd"),
("sound::CSoundEventsDef",".bgsnds",".gsnds"),
]

extension_map = {'bcmdl': {'bsmat', 'bcskla', 'bmbls', 'bcptl'},
 'bcptl': {'bsmat', 'bcskla', 'bmbls', 'bcmdl'},
 'bcskla': {'bsmat', 'bmbls', 'bcmdl', 'bcptl'},
 'bmbls': {'bsmat', 'bcskla', 'bcmdl', 'bcptl'},
 'bmsad': {'bmscu', 'bmsas'},
 'bmsas': {'bmscu', 'bmsad'},
 'bmscu': {'bmsas', 'bmsad'},
 'bmslgroup': {'lc', 'bmssd', 'bmslink', 'lua', 'bmtre'},
 'bmslink': {'lc', 'bmssd', 'lua', 'bmtre', 'bmslgroup'},
 'bmssd': {'lc', 'bmslink', 'lua', 'bmtre', 'bmslgroup'},
 'bmtre': {'lc', 'bmssd', 'bmslink', 'lua', 'bmslgroup'},
 'bsmat': {'bcskla', 'bmbls', 'bcmdl', 'bcptl'},
 'lc': {'bmssd', 'bmslink', 'lua', 'bmtre', 'bmslgroup'},
 'lua': {'lc', 'bmssd', 'bmslink', 'bmtre', 'bmslgroup'}}

#all_extensions = {'.apd','.bapd','.bccam','.bchkdat','.bclgt','.bcmdl','.bcptl','.bcskla','.bctex','.bcurv','.bcwav','.bfgrp','.bfont','.bfsar','.bgsnds','.bldef','.blsnd','.blut','.bmbls','.bmdefs','.bmmap','.bmmdef','.bmsact','.bmsad','.bmsas','.bmsat','.bmsbk','.bmscc','.bmscd','.bmscp','.bmscu','.bmsld','.bmslgroup','.bmslink','.bmsnav','.bmssd','.bmssh','.bmssk','.bmsss','.bmssv','.bmtre','.bnvib','.bpsi','.bptdat','.bptdef','.brem','.bres','.brev','.brfld','.brsa','.brspd','.bshdat','.bsmat','.btunda','.buct','.ccam','.chkdat','.clgt','.cmdl','.cptl','.cskla','.curv','.dds','.dspadpcm.bfstm','.fnt','.fspj','.gsh','.gsnds','.hdr','.imat','.lc','.ldef','.lsnd','.lua','.lut','.m4a','.mbls','.mblst','.mbtre','.mdefs','.mdei','.mdl','.mkv','.mmap','.mmdef','.mp4','.msact','.msad','.msaf','.msas','.msat','.msbk','.mscc','.mscd','.mscp','.mscu','.msld','.mslgroup','.mslink','.msnav','.mssd','.mssg','.mssh','.mssk','.mssl','.msss','.mtxc','.ogg','.pfg','.pkg','.psh','.psi','.ptdat','.ptdef','.rem','.res','.rev','.rfld','.rlei','.rsa','.rspd','.shdat','.smat','.tga','.tunda','.txt','.uct','.vib','.vsh','.wav','.webm'}
all_extensions = ['bapd','bccam','bcmdl','bcptl','bcskla','bcurv','bldef','blsnd','bmbls','bmdefs','bmmap','bmsad','bmsas','bmsat','bmscc','bmscd','bmscu','bmslgroup','bmslink','bmsnav','bmssd','bmtre','bnvib','brem','bres','brev','brfld','brsa','brspd','bsmat','btunda','lc','ptdef','bptdef','ptdat','bptdat','.bcskla2']

scratch = False


f=open('confirmed_strings.txt','r')
for line in f:
    line, bonusinfo = line.rstrip('\n').split('\t',1)
    checksums[crc32(line)] = line, bonusinfo
f.close()

f=open('samusreturns_exefs.txt','r')
for line in f:
    line, bonusinfo = line.rstrip('\n'), 'samusreturns_exefs'
    line = line.replace('.lua','.lc')
    checksums[crc32(line)] = line, bonusinfo
f.close()

f=open('samusreturns_romfs.txt','r')
for line in f:
    line, bonusinfo = line.rstrip('\n'), 'samusreturns_romfs'
    line = line.replace('.lua','.lc')
    checksums[crc32(line)] = line, bonusinfo
f.close()



confirmed_strings = set()

for filename in glob.glob('packs_samusreturns/system/**/*.pkg', recursive=True):

    folder = filename.replace('\\','/').replace('packs/','').replace('.pkg','')

    f=open(filename,'rb')

    # https://twitter.com/NWPlayer123/status/1445145983705358338

    headersize, datasize, entrycount = struct.unpack('<III',f.read(12))
    print(filename, hex(headersize), hex(datasize), hex(entrycount))

    known_entries = 0
    for i in range(entrycount):
        f.seek(0xC+0xC*i)
        crc, startpos, endpos = struct.unpack('<III', f.read(12))

        f.seek(startpos)
        data = f.read(4)
        f.seek(startpos)
        alldata = f.read(endpos-startpos)

        if crc in checksums:
            name, bonusinfo = checksums[crc]
            if scratch:
                confirmed_strings.add(name+'\t'+bonusinfo+'\n')
            known_entries += 1
        else:
            name = hex(crc)
            bonusinfo = '(?)'
        print(name+' '+bonusinfo, hex(startpos), hex(endpos), hex(endpos-startpos), data)

        outfilename = 'unpacked_sr/%s/%s'%(folder, name)
        os.makedirs(os.path.dirname(outfilename), exist_ok=True)

        f4=open(outfilename, 'wb')
        f4.write(alldata)
        f4.close()
            

    print('Known entries: %d/%d (%d%%)'%(known_entries, entrycount, 100 if entrycount==0 else 100*known_entries/entrycount))

    f.close()
    print()
