import struct
import crc64
import json
from serialized_data_new import *
import glob

for i in range(100):
    registerHash('Param%d'%i)

all_types = json.load(open('mercury-engine-data-structures/mercury_engine_data_structures/dread_types.json'))





for filename in glob.glob('unpacked/players/**/*.bmsad', recursive=True):

    print(filename)

    f=open(filename,'rb')

    assert f.read(4) == b'MSAD'
    assert f.read(4) == b'\x0F\x00\x00\x02'

    print(readStr(f))
    print(readStr(f))
    print(readStr(f))

    assert f.read(8) == b'\x00\x00\x08\x00\x00\x00\x00\x00'

    unk_count = readInt(f)
    print(unk_count)

    for i in range(unk_count):
        print(readStr(f))

    print(struct.unpack('<fffffffff', f.read(4*9)))

    print(readInt(f))

    assert f.read(3) == b'\x00\x00\x00'

    unk_count2 = readInt(f)
    print(unk_count2)

    for i in range(unk_count2):
        print('------------')
        print(readStr(f))
        className = readStr(f)
        print(className)
        charClass = 'CCharClass'+className[1:]
        print(readInt(f))
        something = readInt(f)
        print(something)
        blah0 = readInt(f)
        print(blah0)
        blah1 = readInt(f)
        print(blah1)

        if blah0 != 0 or blah1 != 0:
            
            blah2 = readInt(f)
            print('~',blah2)
        
            print('~',readHash(f))

            obj = readObject(f, charClass)
            print('~',obj)
            
            assert f.read(4) == b'\x00\x00\x00\x00'
            
        unk_count3 = readInt(f)
        print(unk_count3)
        for j in range(unk_count3):
            funcname = readStr(f)
            #print('-',funcname)
            idk = readBool(f)
            #print('-',idk)
            assert f.read(1) == b'\x00'
            param_count = readInt(f)
            #print('-',param_count)
            paramlist = []
            for k in range(param_count):
                paramName = readHash(f)
                t = chr(ord(f.read(1)))
                if t == 'b':
                    val = readBool(f)
                elif t == 's':
                    val = readStr(f)
                elif t == 'f':
                    val = readFloat(f)
                elif t == 'i':
                    val = readInt(f)
                else:
                    1/0
                #paramlist.append('%s %s%s'%(paramName, t, val))
                paramlist.append(val)

            #print(funcname, idk, paramlist)
            print(funcname, paramlist)

        misc_data = []

        while True:
            before = f.tell()
            f.seek(before)
            try:
                s = readStr(f)
            except AssertionError:
                break
            if s.isupper():
                f.seek(before)
                break
            else:
                misc_data.append(s)
        print(misc_data)
