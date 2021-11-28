from crc64 import crc64
import re
import glob
import os.path

needed_hashes = set()
hashes = {}

def guess(s,print_new=True):
    csum = crc64(s)
    if csum in needed_hashes and csum not in hashes:
        hashes[csum] = s
        if print_new:
            print(s)

def readInt(f):
    return int.from_bytes(f.read(4), 'little')

f = open('files.toc','rb')

print(hex(readInt(f)))

while True:
    filehash = f.read(8)

    if filehash == b'':
        break

    filehash = int.from_bytes(filehash, 'little')
    needed_hashes.add(filehash)

    filelen = readInt(f)

f.close()

replacements = [
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/charclasses/\2.bmsad'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/charclasses/\2.bmsas'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/charclasses/timeline.bmsas'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/collisions/\2.bmscd'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/lightsdef/\2.bldef'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/models/\2.bcmdl'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/models/imats/\2.bsmat'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/scripts/\2.lc'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/scripts/\2.bmtre'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/scripts/\2.bmslgroup'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/\1/\2/scripts/\2.bmslink'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'actors/cutscene/\2.bmsad'),
#    (r'actors/([^/]*)/([^/]*)/.*',r'system/animtrees/\2.bmsat'),
#    (r'system/animtrees/([a-z]+)\.bmsat',r'actors/weapons/\1/charclasses/\1.bmsad'),
#    (r'system/animtrees/([a-z]+)\.bmsat',r'actors/weapons/\1/charclasses/\1.bmsas'),
#    (r'/imats/(.*)_.*_.*',r'/\1.bcmdl')
#    (r'cutscenes/([^/]*)/.*',r'cutscenes/\1/\1.bmsas'),
#    (r'cutscenes/([^/]*)/.*',r'cutscenes/\1/\1.bmscu'),
#    ('_at','_bc'),
#    ('_at','_nm'),
#    ('_bc','_at'),
#    ('_nm','_at'),
#    ('_nm','_bc'),
#    ('_bc','_nm'),
#    (r'^[^/]*/',r''),
#    (r'blocks/([^/]*)/.*',r'blocks/\1/\1.bcmdl'),
#    (r'/[0-9]+[a-z]+/(.*)/',r'/0006capsuleloop/'),

]

chars = ['_','-']

for i in range(ord('0'), ord('9')+1):
    chars.append(chr(i))
for i in range(ord('a'), ord('z')+1):
    chars.append(chr(i))

#for i in range(ord('0'), ord('9')+1):
#    replacements.append((r'...\.',chr(i)+'.'))
#for i in range(ord('a'), ord('z')+1):
#    replacements.append((r'...\.',chr(i)+'.'))

#for i in range(40):
#    replacements.append(((r'.'*i)+r'\.',r'.'))

#for c1 in chars:
#    #for c2 in chars:
#        replacements.append((r'\.', c1+r'.'))

#all_extensions = ['.apd','.bapd','.bccam','.bchkdat','.bclgt','.bcmdl','.bcptl','.bcskla','.bctex','.bcurv','.bcwav','.bfgrp','.bfont','.bfsar','.bgsnds','.bldef','.blsnd','.blut','.bmbls','.bmdefs','.bmmap','.bmmdef','.bmsact','.bmsad','.bmsas','.bmsat','.bmsbk','.bmscc','.bmscd','.bmscp','.bmscu','.bmsld','.bmslgroup','.bmslink','.bmsnav','.bmssd','.bmssh','.bmssk','.bmsss','.bmssv','.bmtre','.bnvib','.bpsi','.bptdat','.bptdef','.brem','.bres','.brev','.brfld','.brsa','.brspd','.bshdat','.bsmat','.btunda','.buct','.ccam','.chkdat','.clgt','.cmdl','.cptl','.cskla','.curv','.dds','.dr','.er','.fnt','.fr','.fspj','.gr','.gsh','.gsnds','.hdr','.imat','.in','.ir','.jr','.kr','.lc','.ldef','.lr','.lsnd','.lua','.lut','.mbls','.mblst','.mbtre','.mdefs','.mdei','.mdl','.mkv','.mmap','.mmdef','.mr','.msact','.msad','.msaf','.msas','.msat','.msbk','.mscc','.mscd','.mscp','.mscu','.msld','.mslgroup','.mslink','.msnav','.mssd','.mssg','.mssh','.mssk','.mssl','.msss','.mtxc','.nr','.pfg','.pkg','.pr','.psh','.psi','.ptdat','.ptdef','.qr','.rem','.res','.rev','.rfld','.rlei','.rr','.rsa','.rspd','.shdat','.smat','.sr','.tga','.tr','.tunda','.txt','.uct','.vib','.vr','.vsh','.wav','.webm','.xn','.yl']
#all_extensions = ['.bapd','.bccam','.bcmdl','.bcptl','.bcskla','.bctex','.bcurv','.bfgrp','.bfont','.bfsar','.bfstm','.bgsnds','.bldef','.blsnd','.blut','.bmbls','.bmdefs','.bmmap','.bmmdef','.bmsact','.bmsad','.bmsas','.bmsat','.bmscc','.bmscd','.bmscp','.bmscu','.bmsld','.bmslgroup','.bmslink','.bmsnav','.bmssd','.bmssh','.bmssk','.bmsss','.bmsstoc','.bmtre','.bnvib','.bpsi','.bptdat','.bptdef','.brem','.bres','.brev','.brfld','.brsa','.brspd','.bshdat','.bsmat','.btunda','.buct','.dsc','.ini','.lc','.pkg','.toc','.txt','.webm']
all_extensions = []

words = set()

#for line in open('words_common.txt'):
#    words.add(line.strip().lower())

already_done = set()

f4 = open('filestoc.bak','w')

for filename in ['filestoc.txt']:
    f = open(filename)
    for line in f:
        f4.write(line)
        guess(line.split('\t')[0], print_new=False)
    f.close()

f4.close()

assert crc64('actors/characters/arachnus/animations/death.bcskla') in needed_hashes
assert crc64('actors/characters/arachnus/animations/death.bcskla') in hashes

last_ext = ''
#for filename in glob.glob('*.txt'):
for filename in ['filestoc.txt','customstrings.txt']:

    print(filename)
    f = open(filename)

    for line in f:
        line = line.strip().split('\t')[0].lower()

        if len(line) > 200:
            continue

        if '.' not in line and '/' not in line:
            continue

        if '[' in line:

            prefix, rest = line.split('[',1)

            #if prefix not in already_done and last_ext:
            #    already_done.add(prefix)
            #    for word in words:
            #        line_ = prefix+word+'.'+last_ext
            #        guess(line_)

            #if prefix not in already_done and len(prefix) and prefix[-1] in ['_','-','/']:
            #    already_done.add(prefix)
            #    for word in words:
            #        line_ = prefix+word
            #        guess(line_)
        else:
            
            guess(line)

            for before, after in replacements:
                line_ = re.sub(before, after, line)
                guess(line_)

            #if '.' in line:
            #    noext, orig_ext = line.split('.',1)
            #    last_ext = orig_ext
            #else:
            #    noext = line
            #    orig_ext = ''
            #
            #for ext in all_extensions:
            #    line_ = noext + ext
            #    guess(line_)


            #if '/' in line:
            #    folder = line.rsplit('/',1)[0]
            #
            #    if folder not in already_done:
            #        already_done.add(folder)
            #    
            #        for word in words:
            #            line_ = folder+'/'+word
            #            guess(line_)

            #for q in range(1,max(50, len(line))):
            #    for i in range(1,len(line)-q-1):
            #        line_ = line[:i] +line[i+q:]
            #        guess(line_)


        '''
        if '_' in line:
            
            til_last_underscore = line.rsplit('_',1)[0]

            if til_last_underscore not in already_done:

                already_done.add(til_last_underscore)

                for word in words:
                    #line_ = noext+'_'+word+'.'+orig_ext
                    line_ = til_last_underscore+'_'+word+'.'+orig_ext
                    guess(line_)
        '''
        #for word in words:
        #    line_ = noext+'_'+word+'.'+orig_ext
        #    guess(line_)
        #    
        #    line_ = noext+word+'.'+orig_ext
        #    guess(line_)

        #for c1 in chars:
        # for c2 in chars:
        #    line_ = noext+'_'+c1+c2+'.'+orig_ext
        #    guess(line_)
            
        '''
        nolastword = noext.rsplit('/',1)[0]

        #if 'actors' not in line and 'cutscenes' not in line and 'maps' not in line:
        if True:
            if nolastword not in already_done:

                already_done.add(nolastword)

                for word in words:
                    line_  = nolastword+'/'+word#+'.'+orig_ext
                    guess(line_)
        '''

    f.close()

def commonprefix(s1, s2):
    return os.path.commonprefix([s1, s2])

def commonsuffix(s1, s2):
    return commonprefix(s1[::-1], s2[::-1])[::-1]

f = open('files.toc','rb')


print(hex(readInt(f)))

total = 0
known = 0

sizesorted = []
f2_lines = []
f3_lines = []

unknown_group = []
prev_known_filename = '?'
while True:
    filehash = f.read(8)

    if filehash == b'':
        break

    filehash = int.from_bytes(filehash, 'little')
    filelen = readInt(f)

    if filehash in hashes:
        filename = hashes[filehash]
        known += 1
        
        prefix = commonprefix(prev_known_filename, filename)
        suffix = commonsuffix(prev_known_filename, filename)

        for h,length in unknown_group:
            partial_filename = '%s[%s-%s]...UNKNOWN'%(prefix, prev_known_filename[len(prefix)], filename[len(prefix)])
            f2_lines.append('%s\t%s\t%s\n'%(partial_filename, hex(h), hex(length)))
            sizesorted.append('%08X\t%s\t%s\n'%(length, partial_filename, hex(h)))
        
        max_missing = 3
        if len(prev_known_filename)<=len(prefix)+max_missing+len(suffix) and len(filename)<=len(prefix)+max_missing+len(suffix):
            missing = max(len(prev_known_filename)-len(prefix)-len(suffix), len(filename)-len(prefix)-len(suffix))
            for h,_ in unknown_group:
                f3_lines.append('%s\t%s\t%s\t%s\t%s\t%s\n'%(hex(h), prefix, suffix, missing, prev_known_filename, filename))

        #guess(prefix+suffix)
        #for c1 in chars:
        #  guess(prefix+c1+suffix)

        unknown_group = []
        prev_known_filename = filename
        

        f2_lines.append('%s\t%s\t%s\n'%(filename, hex(filehash), hex(filelen)))
        sizesorted.append('%08X\t%s\t%s\n'%(filelen, filename, hex(filehash)))

        if prev_known_filename > filename:
            print('Warning: %s > %s'%(prev_known_filename,filename))
    else:
        filename = '(UNKNOWN)'
        unknown_group.append((filehash, filelen))
    total += 1

print('Known: %d/%d (%s%%)'%(known,total,100.0*known/total))


f3 = open('unknowns.txt','w')
for line in f3_lines:
    f3.write(line)
f3.close()

f5 = open('filestoc_sizesorted.txt','w')
for line in sorted(sizesorted):
    f5.write(line)
f5.close()

f2 = open('filestoc.txt','w')
for line in f2_lines:
    f2.write(line)
f2.close()

f.close()
