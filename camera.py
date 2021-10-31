import struct
import pprint

def assertRead(f, bstr):
    assert f.read(len(bstr)) == bstr

def readStr(f, ):
    char = b''
    s = b''
    while char != b'\x00':
        s += char
        char = f.read(1)
    return s.decode('ascii')

def readInt(f, ):
    return int.from_bytes(f.read(4), 'little')

def assertReadHash(f, s):
    assertRead(crc64(s).to_bytes(8, 'little'))

def readVec3f(f):
    return struct.unpack('<fff', f.read(12))

def readLong(f):
    return int.from_bytes(f.read(8), 'little')

def readShort(f):
    return int.from_bytes(f.read(2), 'little')

def readByte(f):
    return int.from_bytes(f.read(1), 'little')

def getPolygons(level):

    f=open('unpacked/maps/%s/%s/maps/levels/c10_samus/%s/%s.bmscc'%(level,level,level,level),'rb')

    polygons = {}

    assertRead(f, b'MSCD\x01\x00\x10\x00\x01\x00\x00\x00collision_layer\x00')
    camcount = readInt(f)
    for i in range(camcount):
        p = {}
        name = readStr(f)
        assert readStr(f) == 'Untagged'
        assert readByte(f) == 0
        assert readStr(f) == 'CAMERA_RED'
        assert readShort(f) == 1
        assert readStr(f) == 'POLYCOLLECTION2D'
        assertRead(f, b'\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00')
        assert readInt(f) == 1
        vertex_count = readInt(f)
        p['unk'] = f.read(4)
        p['vertices'] = []
        for j in range(vertex_count):
            p['vertices'].append(struct.unpack('<ffi', f.read(12)))
        assert readByte(f) == 1
        bounds1 = struct.unpack('<ffff', f.read(16))
        bounds2 = struct.unpack('<ffff', f.read(16))
        assert bounds1 == bounds2
        p['bounds'] = bounds1
        assert readByte(f) == 0
        polygons[name] = p

    assert f.read() == b''
    f.close()
    return polygons

if __name__ == '__main__':
    pprint.pprint(getPolygons('s050_forest'))
