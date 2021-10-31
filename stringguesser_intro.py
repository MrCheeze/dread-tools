from crc64 import crc64
import pprint
import re
import glob
import struct
import os


guess_chars = [',', ' ', '<', '>', ':', '_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

#guess_chars = [chr(x) for x in range(128)]

all_hashes = {}
good_hashes = {}

def guess(s):
    all_hashes[crc64(s)] = s

f=open('exefs_strings.txt')
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


f.close()

for filename in sorted(glob.glob('unpacked/**/*.*', recursive=True) + glob.glob('savedata/**/*.*', recursive=True) + glob.glob('C:/Users/Matthew/AppData/Roaming/yuzu/dump/010093801237C000/romfs/**/*.*', recursive=True)):

    if os.path.isdir(filename):
        continue

    f=open(filename,'rb')
    testhash = int.from_bytes(f.read(8), 'little')
    if testhash in all_hashes:
        unk = f.read(4)
        roothash = int.from_bytes(f.read(8), 'little')
        if all_hashes[testhash].startswith('GUI'):
            fieldType = all_hashes[int.from_bytes(f.read(8), 'little')]
        else:
            fieldType = None
        rootfields = f.read(4)
        nexthash = int.from_bytes(f.read(8), 'little')
        shortfilename=filename.replace('C:/Users/Matthew/AppData/Roaming/yuzu/dump/010093801237C000/','')
        print(all_hashes[testhash], unk, all_hashes[roothash], fieldType, rootfields, all_hashes[nexthash], shortfilename)
    else:
        f.read(4)
        roothash = int.from_bytes(f.read(8), 'little')
        if roothash in all_hashes:
            assert all_hashes[roothash] != 'Root'
    f.close()
