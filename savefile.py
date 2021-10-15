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
    0x59d2703261e2c126: None
}

for line in f:
    line = line.rstrip('\n')
    if crc64(line) in hashes:
        hashes[crc64(line)] = line

f.close()

for k in hashes:
    print(hex(k), hashes[k])
