from crc64 import crc64
import struct
import pprint
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Polygon
import math

import numpy as np
from camera import getPolygons

f=open('exefs_strings.txt')
guess_chars = [',', ' ', '<', '>', ':', '_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
all_hashes = {}
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






levels = ['s010_cave','s020_magma','s030_baselab','s040_aqua','s050_forest','s060_quarantine','s070_basesanc','s080_shipyard','s090_skybase']

levels = [levels[0]]

for level in levels:
    print(level)

    polygons = getPolygons(level)

    def randcolor():
        return np.random.rand(3,) * 0.8

    plt.plot(0, 0)

    '''for p in polygons:
        print(p, polygons[p])
        x1,y1,x2,y2 = polygons[p]['bounds']
        if abs(x1) > 59999 or abs(y1) > 59999 or abs(x2) > 59999 or abs(y2) > 59999:
            continue
        vertices = np.array(polygons[p]['vertices'])[:,:2]
        c = randcolor()
        plt.gca().add_patch(Polygon(vertices,linewidth=1,edgecolor=c,facecolor=(c[0], c[1], c[2], 0.1)))
        plt.text((x1+x2)/2, (y1+y2)/2, p[17:], color=c, ha='center')
    print()'''

    f=open('unpacked/maps/%s/%s/maps/levels/c10_samus/%s/%s.brfld'%(level,level,level,level),'rb')

    def assertRead(bstr):
        assert f.read(len(bstr)) == bstr

    assertRead(b' \xef\t\xbb\xe0M\x82B1\x00\x00\x02\xcb\xc5\xea\x0b\xb5Bf4\x01\x00\x00\x00>p\x8ds\xee\xc9\xcb\xf8 \xef\t\xbb\xe0M\x82B\x06\x00\x00\x00\x97\x1f\x86\xc6\x1e3}bc10_samus\x00\xd0\x98?4\xe8k\x1b:')

    def readStr():
        char = b''
        s = b''
        while char != b'\x00':
            s += char
            char = f.read(1)
        return s.decode('ascii')

    sScenarioID = readStr()
    print('scenario', sScenarioID)

    assertRead(b'\x8c\xef\x87\xf4\x01\x1a\xe9\x0f\x03\x00\x00\x00entities\x00sounds\x00lights\x00')

    def readInt():
        return int.from_bytes(f.read(4), 'little')

    def assertReadHash(s):
        assertRead(crc64(s).to_bytes(8, 'little'))

    def readVec3f():
        return struct.unpack('<fff', f.read(12))

    def readLong():
        return int.from_bytes(f.read(8), 'little')

    def readByte():
        return int.from_bytes(f.read(1), 'little')

    def readComponent():
        componentType = all_hashes[readLong()]
        print(componentType)
        assert componentType.startswith('C') and componentType.endswith('Component')
        componentFieldCount = readInt()
        fields = []
        for i in range(componentFieldCount):
            name = all_hashes[readLong()]
            print(name)

        
        print(hex(f.tell()))
        1/0

    def readActor():
        a = {} 
        identifier = readStr()

        typeHash = readLong()
        if typeHash == crc64('CActor'):
            a['type'] = 'CActor'
        elif typeHash == crc64('CEntity'):
            a['type'] = 'CEntity'
        else:
            raise Exception('unknown typeHash '+hex(typeHash))

        assertRead(b'\x06\x00\x00\x00')
        
        assertReadHash('sName')
        sName = readStr()
        assert identifier == sName
        a['sName'] = sName
        
        assertReadHash('oActorDefLink')
        a['oActorDefLink'] = readStr()
        
        assertReadHash('vPos')
        a['vPos'] = readVec3f()
        
        assertReadHash('vAng')
        a['vAng'] = readVec3f()

        # components
        assertReadHash('pComponents')
        a['pComponents'] = []
        assertReadHash('base::global::CRntSmallDictionary<base::global::CStrId, CActorComponent*>')
        component_count = readInt()
        for i in range(component_count):
            c = {}
            c['name'] = readStr()
            c['data'] = readComponent()
        
        assertReadHash('bEnabled')
        a['bEnabled'] = readByte()

        return a

    assertReadHash('rEntitiesLayer')
    assertRead(b'\x02\x00\x00\x00')
    assertReadHash('dctSublayers')

    sublayer_count = readInt()
    print('sublayers', sublayer_count)

    for i in range(sublayer_count):

        layer_identifier = readStr()
        assertRead(b'\x02\x00\x00\x00')
        assertReadHash('sName')
        sName = readStr()
        assert layer_identifier == sName
        print('sublayer', sName)

        assertReadHash('dctActors')
        actor_count = readInt()
        print('actors', actor_count)

        for j in range(actor_count):
            a = readActor()
            if 'shield' in a['sName'].lower() and a['vAng'][0] == 0 and a['vAng'][1] != 0 and 'missile' in a['sName'].lower():
                print(a)
                c = randcolor()
                plt.plot(a['vPos'][0], a['vPos'][1], 'o', color=(c[0],c[1],c[2],0.5))
                print(a)
                plt.text(a['vPos'][0], a['vPos'][1], a['sName'], color=c, ha='center',rotation=-a['vAng'][1]*10)

    print()
    assertReadHash('dctActorGroups')
    actor_group_count = readInt()
    print('actorgroups', actor_group_count)

    shield_cameras = {}

    for i in range(actor_group_count):
        print()
        groupname = readStr()
        print(groupname)
        actorcount = readInt()
        actors = []
        for j in range(actorcount):
            actorpath = readStr()
            if 'shield' in actorpath.lower():
                print(actorpath)
                #assert actorpath.startswith('Root:pScenario:rEntitiesLayer:dctSublayers:default:dctActors:')
                actorpath_short = actorpath.split(':')[-1]
                if actorpath_short not in shield_cameras:
                    shield_cameras[actorpath_short] = []
                shield_cameras[actorpath_short].append(groupname)
                
        for x in shield_cameras:
            shield_cameras[x].sort()

    print()
    pprint.pprint(shield_cameras)
    print()
    plt.show()
