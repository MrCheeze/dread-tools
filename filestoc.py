from crc64 import crc64


hashes = {}

for filename in ['confirmed_strings.txt','filelist.txt']:

    for line in open(filename):
        line = line.strip().split('\t')[0]
        hashes[crc64(line)] = line

def readInt(f):
    return int.from_bytes(f.read(4), 'little')

f = open('files.toc','rb')
f2 = open('filestoc.txt','w')

print(hex(readInt(f)))

while True:
    filehash = f.read(8)

    if filehash == b'':
        break

    filehash = int.from_bytes(filehash, 'little')
    
    filename = hashes[filehash] if filehash in hashes else '(UNKNOWN)'

    filelen = readInt(f)

    f2.write('%s\t%s\t%s\n'%(filename, hex(filehash), hex(filelen)))

f.close()
f2.close()
