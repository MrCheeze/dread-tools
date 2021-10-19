from crc64 import crc64
import pprint
import re

f=open('exefs_strings.txt')

hashes = {
    0x6A0C7BDE338B1A2B: None,
    0x937459BA5ED68A51: None,
    0x799781F713E7D4E0: None,
    0xBF34F79BBA0DEAF6: None,
    0x26DE4835F38BB831: None,
    0x291E3F130F064F1D: None,
    0xD7278D3C2CC621ED: None,
    0xB97CD894D76CACD6: None,
    0xD2DCBE71A41CE64D: None,
    0x55A2CCA8471AF58E: None,
    0xF9365AAB69F858F0: None,
    0xF450E55A3654AABD: None,
    0xCF6AD2B17894E025: None,
    0x29C6B98E3D947388: None,
    0x24873FF4B4E3C57E: None,

    0xF7A3936F450614BD: None,
    0x937459BA5ED68A51: None,
    0x6A0C7BDE338B1A2B: None,
    0xBF34F79BBA0DEAF6: None,
    0x799781F713E7D4E0: None,
    0xD7278D3C2CC621ED: None,
    0xB97CD894D76CACD6: None,
    0x291E3F130F064F1D: None,
    0xD2DCBE71A41CE64D: None,
    0x55A2CCA8471AF58E: None,
    0xCF6AD2B17894E025: None,
    0x29C6B98E3D947388: None,
    0xF9365AAB69F858F0: None,
    0xD070405C1FF026E9: None,
    0x0FE5E4DF5B4C719A: None,
    0xF450E55A3654AABD: None,
    0xAF0F535C4B859612: None,
    0x4DE23A595AECA5D4: None,
    0x24873FF4B4E3C57E: None,
    0x7059995F8C21C448: None,

    0x346642B50BEAC5CB: None,
    0x19C88B27662FBED0: None,
    0x0DC89E6D436BB122: None,

    0x94efd6b4ce6f0b4d: None,
    0x59d2703261e2c126: None,
    0x42824de0bb09ef20: None,

    0x5a5ca89c6faf836c: None,
    0x9884224a42cccf72: None,
    0xc13f58ff800ad931: None,
    0x264cb5f3a10c500c: None,
    0x5b7f603b163adfca: None,
    0x76ea98d6172d491d: None,
    
    0x76ea98d6172d491d: None,

    0xFA551d1d6c4c30f9: None,
    0x497b51a36feb6f96: None,
    0xe81bcfd2adbd86a0: None,
    0xbff7b7a5d1bd647a: None,

    0x8d6d71ad17bc9217: None,
    0xf25c7f4438de97c8: None,

    0x9f11b59fa3826525: None,
    0xd7b335721099bf9: None,
    0x59924ac57dd96af4: None,
    0x1beb814e510d45bf: None,
    0x37307f0ffeba3f3: None,
    0xa1086f38831bf379: None,

    0x0DC89E6D436BB122: None
}

guess_chars = ['_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

#guess_chars = [chr(x) for x in range(128)]

def guess(s):
    if crc64(s) in hashes:
        hashes[crc64(s)] = s

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

for k in hashes:
    print(hex(k), hashes[k])
