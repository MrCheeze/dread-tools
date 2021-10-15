# https://gist.github.com/NWPlayer123/7044816c02e89075aa1af886269eb7f7

import glob
import json

def getstr(f):
    ret = "";char = f.read(1).decode('ascii')
    while char != "\x00":
        ret += char
        char = f.read(1).decode('ascii')
    return ret

def getustr(f):
    ret = "";char = f.read(2).decode('utf-16')
    while char != "\x00":
        ret += char
        char = f.read(2).decode('utf-16')
    return ret

for filename in glob.glob("*.txt"):
    data = {}
    with open(filename, "rb") as f:
        assert f.read(4) == b"BTXT"
        assert f.read(4) == b"\x01\x00\x0A\x00" #???
        f.seek(0, 2)
        size = f.tell()
        f.seek(8)
        while f.tell() < size:
            name = getstr(f)
            value = getustr(f)
            data[name] = value
        with open("decoded/"+filename, "w", encoding='utf-8') as o:
            json.dump(data, o, ensure_ascii=False, indent=4)
