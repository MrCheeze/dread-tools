from crc64 import crc64
import pprint
import re
import glob
import struct
import os
import re

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


f.close()

datas = []

types = {}

for filename in sorted(glob.glob('unpacked/maps/s010_cave/**/*.brfld', recursive=True)):

    if os.path.isdir(filename):
        continue

    print('---',filename,'---')

    f=open(filename,'rb')

    f.seek(0x18) # temp
    
    data = f.read()
    end_of_last_hash = 0
    last_hashed_str = ''
    for i in range(len(data)):
        testhash = int.from_bytes(data[i:i+8], 'little')
        if testhash in all_hashes:
            if i != 0:
                datas.append((last_hashed_str, data[end_of_last_hash:i], all_hashes[testhash]))
                types[last_hashed_str] = [None, data[end_of_last_hash:i], all_hashes[testhash]]
            good_hashes[testhash] = all_hashes[testhash]
            last_hashed_str = all_hashes[testhash]
            end_of_last_hash = i + 8
        else:
            if i == 0:
                break
    f.close()
    datas.append((last_hashed_str, data[end_of_last_hash:i], '_EOF_'))
    types[last_hashed_str] = [None, data[end_of_last_hash:i], '_EOF_']

r_class = re.compile(r'^([A-Za-z]+::)*[A-Z][A-Za-z]+(<.+>)?$')
r_field = re.compile(r'^[a-z][A-Za-z]+$')
r_str = re.compile(r'^[A-Za-z0-9_:/\.#\{\}]*$')

def setClass(s, cStr):
    if types[s][0] != None and types[s][0] != cStr:
        if s != 'pLogicShape':
            print(s, types[s][0], cStr)
            2/0
    types[s][0] = cStr

def readInt(data):
    return struct.unpack('<I',data)[0]

def isSmallInt(data):
    if len(data) == 4 and 1 <= readInt(data) < 0xFF:
        return readInt(data)

def isStr(data,s):
    if s[0] not in ['s','o','w']:
        return False
    if (len(data) >= 2 or (data==b'\x00' and s[0]=='s')) and data[-1] == 0 and (b'\x00' not in data[:-1] or s[0]=='s' or s[:2]=='wp'):
        try:
            return r_str.match(data.split(b'\x00')[0].decode('ascii'))
        except UnicodeDecodeError:
            return False
    return False

def isVecStr(data,s):
    if s[0] not in ['v','t','a']:
        return False
    if len(data) >= 6 and isSmallInt(data[:4]) and data[-1] == 0:
        array = data[4:-1].split(b'\x00')
        length = readInt(data[:4])
        if len(array) == length or (len(array) >= length and s[0] in['t']):
            for s in array:
                if not r_str.match(s.decode('ascii')):
                    return False
            return True
    return False

setClass('rEntitiesLayer', 'obj')
setClass('dctSublayers', 'dict<obj>')
setClass('dctActors', 'dict<class>')
setClass('vPos', 'vec3<float>')
setClass('vAng', 'vec3<float>')
setClass('v3Position', 'vec3<float>')
setClass('v3Rotation', 'vec3<float>')
setClass('v3Scale', 'vec3<float>')
setClass('v3Dir', 'vec3<float>')
setClass('base::global::CRntSmallDictionary<base::global::CStrId, CActorComponent*>', 'dict<class>')

for s, val, nextStr in datas:

    if r_class.match(s) and r_field.match(nextStr) and isSmallInt(val):
        setClass(s, 'class')
    if r_field.match(s) and isStr(val,s):
        setClass(s, 'str')
    if r_field.match(s) and isVecStr(val,s):
        setClass(s, 'vstr')
    if r_field.match(s) and val == b'' and r_class.match(nextStr):
        setClass(s, 'ptr')
    if r_field.match(s) and s[0] == 'b' and len(val) == 1:
        setClass(s, 'byte')
    if r_field.match(s) and s[0] == 'f' and len(val) == 4:
        setClass(s, 'float')
    if r_field.match(s) and s[0] == 'i' and len(val) == 4:
        setClass(s, 'int')
    if r_field.match(s) and s[0] == 'e' and len(val) == 4:
        setClass(s, 'int')
    if r_field.match(s) and s[0] == 'e' and len(val) > 4 and val[4:]:
        setClass(s, 'int')
    if r_field.match(s) and s.startswith('lst') and isSmallInt(val) and r_class.match(nextStr):
        setClass(s, 'list<class>')

setClass('pLogicShape', '?')

for s in types:
    dataType, exampledata, exampleNextStr = types[s]
    if dataType is None:
        print(s, exampledata, exampleNextStr)
        1/0
