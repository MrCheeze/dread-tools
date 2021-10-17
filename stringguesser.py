from crc64 import crc64
import pprint
import re
import glob
import struct

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

for c1 in guess_chars:
    guess(c1)
    for c2 in guess_chars:
        guess(c1+c2)
        for c3 in guess_chars:
            guess(c1+c2+c3)


f.close()

for filename in sorted(glob.glob('savedata/**/*.bmssv',recursive=True)):
    #print(filename)

    f=open(filename,'rb')
    data = f.read()
    for i in range(len(data)):
        testhash = int.from_bytes(data[i:i+8], 'little')
        if testhash in all_hashes:
            good_hashes[testhash] = all_hashes[testhash]
    f.close()

for k in good_hashes:
    print(hex(k), good_hashes[k])
