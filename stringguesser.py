from crc64 import crc64
import pprint
import re
import glob
import struct
import os

f=open('exefs_strings.txt')

guess_chars = [',', ' ', '<', '>', ':', '_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

#guess_chars = [chr(x) for x in range(128)]

all_hashes = {}
good_hashes = {}

def guess(s):
    all_hashes[crc64(s)] = s

for line in f:
    line = line.rstrip('\n')
    guess(line)
    if line.startswith('m_'):
        line = line[2:]
        guess(line)

for c1 in guess_chars:
    guess(c1)
    for c2 in guess_chars:
        guess(c1+c2)
        for c3 in guess_chars:
            guess(c1+c2+c3)
all_hashes.pop(crc64('YG'))


f.close()

end_of_last_hash = 0

#for filename in sorted(glob.glob('savedata/**/*.bmssv',recursive=True)):
#for filename in sorted(glob.glob('savedata/**/userdata.bmssv',recursive=True)):
#for filename in ['unpacked/maps/s010_cave/s010_cave/maps/levels/c10_samus/s010_cave/s010_cave.brfld']:
#for filename in sorted(glob.glob('unpacked/maps/**/*.brsa', recursive=True)):
#for filename in ['unpacked/maps/s050_forest/s050_forest/maps/levels/c10_samus/s050_forest/s050_forest.brfld']:
#for filename in sorted(glob.glob('unpacked/system/system/playthrough*/**/*.*',recursive=True)):
#for filename in ['tunables.btunda']:
#for filename in ['temp.bin']:
#for filename in ['savedata/LetsPlayNintendoITA_hundo/1/common.bmssv']:
#for filename in ['unpacked/maps/s010_cave/s010_cave/cutscenes/0005meleetutorial/0005meleetutorial.bmscu']:
for filename in ['savedata/meleetuto_seen/common.bmssv']:

    if os.path.isdir(filename):
        continue

    print('---',filename,'---')

    f=open(filename,'rb')
    data = f.read()
    for i in range(len(data)):
        testhash = int.from_bytes(data[i:i+8], 'little')
        if testhash in all_hashes:
            if i == 0:
                print(filename)
            else:
                print(data[end_of_last_hash:i])
            good_hashes[testhash] = all_hashes[testhash]
            print(hex(i), hex(testhash), all_hashes[testhash])
            end_of_last_hash = i + 8
        else:
            if i == 0:
                break
    f.close()
    print(data[end_of_last_hash:])

#for k in good_hashes:
#    print(hex(k), good_hashes[k])
