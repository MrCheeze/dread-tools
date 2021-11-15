import z3
from crc64 import crc64

# By alkalinesec - https://gist.github.com/aemmitt-ns/6b6d4098c48ebba0f26894b77c8d7e10
# Slightly tweaked by chz
# Prerequisite: z3-solver

def solve(goalchecksum, prefixstr, suffixstr, maxunklen=13):

    #print(prefixstr)

    for unklen in range(1,maxunklen+1):

        print("Solving %s for string %s{?x%d}%s" % (hex(goalchecksum), prefixstr, unklen, suffixstr))

        s = z3.Solver()
        s.push()

        poly = z3.BitVecVal(0xC96C5795D7870F42, 64)
        goal = z3.BitVecVal(goalchecksum, 64)
        ZERO = z3.BitVecVal(0, 64)
        ONE  = z3.BitVecVal(1, 64)

        unknown = z3.BitVec("fn", unklen*8)
        full = unknown
        prefixnum = sum(ord(c) << 8*i for i, c in enumerate(prefixstr))
        if len(prefixstr) > 0:
            prefix = z3.BitVecVal(prefixnum, len(prefixstr)*8)
            full = z3.Concat(full, prefix)
        suffixnum = sum(ord(c) << 8*i for i, c in enumerate(suffixstr))
        if len(suffixstr) > 0:
            suffix = z3.BitVecVal(suffixnum, len(suffixstr)*8)
            full = z3.Concat(suffix, full)

        crc = ~ZERO
        for i in range(full.size()//8):
            c = z3.Extract(8*(i+1)-1, 8*i, full)

            if len(prefixstr) <= i < len(prefixstr)+unklen:

                s.add(z3.simplify(z3.Or(
                    z3.And(
                        c >= z3.BitVecVal(ord('a'), 8),
                        c <= z3.BitVecVal(ord('z'), 8),
                    ),
                    z3.And(
                        c >= z3.BitVecVal(ord('A'), 8),
                        c <= z3.BitVecVal(ord('Z'), 8),
                        unklen <= 8,
                    ),
                    z3.And(
                        c == z3.BitVecVal(ord('_'), 8),
                        unklen <= 14,
                    ),
                    z3.And(
                        c >= z3.BitVecVal(ord('0'), 8),
                        c <= z3.BitVecVal(ord('9'), 8),
                        unklen <= 8,
                    ),
                    z3.And(
                        c == z3.BitVecVal(ord('-'), 8),
                        unklen <= 8,
                    ),
                    z3.And(
                        c == z3.BitVecVal(ord(' '), 8),
                        unklen <= 8,
                    ),
                    z3.And(
                        c == z3.BitVecVal(ord('.'), 8),
                        unklen <= 14,
                    ),
                )))
                
                #s.add(z3.And(
                #    c >= z3.BitVecVal(0x20, 8),
                #    c <= z3.BitVecVal(0x7F, 8),
                #))

            crc = z3.simplify(crc ^ z3.ZeroExt(56, c))
            for k in range(8):
                crc = z3.If(crc & ONE != ZERO, 
                    z3.LShR(crc, ONE) ^ poly,
                    z3.LShR(crc, ONE))

        s.add(crc == goal)

        while s.check() == z3.sat:
            m = s.model()
            r = m.eval(unknown, True)
            s.add(unknown != r)

            print(prefixstr+("".join(chr((r.as_long() >> 8*i) & 0xff)for i in range(unklen)))+suffixstr)

'''
def solveCutscene(goalchecksum):

 for unklen3 in range(8,15):
  for unklen2 in [2]:#[1,2,3]:
   for knownstr2 in ['_rumble_']:#['_rumble_','b_rumble_']:
        s = z3.Solver()
        s.push()

        poly = z3.BitVecVal(0xC96C5795D7870F42, 64)
        goal = z3.BitVecVal(goalchecksum, 64)
        ZERO = z3.BitVecVal(0, 64)
        ONE  = z3.BitVecVal(1, 64)

        knownstr1 = 'vibrations/cutscenes/cutscene_0'
        unklen1 = 3
        knownstr2 = knownstr2
        unklen2 = unklen2
        knownstr3 = '_'
        unklen3 = unklen3
        knownstr4 = '.bnvib'

        print("Solving %s for string %s%s%s%s%s%s%s" % (hex(goalchecksum), knownstr1, '?'*unklen1, knownstr2, '?'*unklen2, knownstr3, '?'*unklen3, knownstr4))

        known1 = z3.BitVecVal(sum(ord(c) << 8*i for i, c in enumerate(knownstr1)), len(knownstr1)*8)
        full = known1
        
        unknown1 = z3.BitVec("fn1", unklen1*8)
        full = z3.Concat(unknown1, full)
        
        known2 = z3.BitVecVal(sum(ord(c) << 8*i for i, c in enumerate(knownstr2)), len(knownstr2)*8)
        full = z3.Concat(known2, full)
        
        unknown2 = z3.BitVec("fn2", unklen2*8)
        full = z3.Concat(unknown2, full)
        
        known3 = z3.BitVecVal(sum(ord(c) << 8*i for i, c in enumerate(knownstr3)), len(knownstr3)*8)
        full = z3.Concat(known3, full)
        
        unknown3 = z3.BitVec("fn3", unklen3*8)
        full = z3.Concat(unknown3, full)
        
        known4 = z3.BitVecVal(sum(ord(c) << 8*i for i, c in enumerate(knownstr4)), len(knownstr4)*8)
        full = z3.Concat(known4, full)

        crc = ~ZERO
        for i in range(full.size()//8):
            c = z3.Extract(8*(i+1)-1, 8*i, full)
                
            if len(knownstr1) <= i < len(knownstr1)+unklen1:

                if len(knownstr1) == i:
                
                    s.add(z3.simplify(z3.And(
                        c >= z3.BitVecVal(ord('0'), 8),
                        c == z3.BitVecVal(ord('0'), 8),#c <= z3.BitVecVal(ord('1'), 8),
                    )))

                else:
                
                    s.add(z3.simplify(z3.And(
                        c >= z3.BitVecVal(ord('0'), 8),
                        c <= z3.BitVecVal(ord('9'), 8),
                    )))

            if len(knownstr1)+unklen1+len(knownstr2) <= i < len(knownstr1)+unklen1+len(knownstr2)+unklen2:

                if unklen2 > 1 and len(knownstr1)+unklen1+len(knownstr2) == i:
                
                    s.add(z3.simplify(z3.And(
                        c >= z3.BitVecVal(ord('0'), 8),
                        c <= z3.BitVecVal(ord('1'), 8),#c <= z3.BitVecVal(ord('2'), 8),
                    )))

                elif (unklen2 == 1 and len(knownstr1)+unklen1+len(knownstr2) == i) or len(knownstr1)+unklen1+len(knownstr2)+1 == i:
                
                    s.add(z3.simplify(z3.And(
                        c >= z3.BitVecVal(ord('0'), 8),
                        c <= z3.BitVecVal(ord('9'), 8),
                    )))

                elif len(knownstr1)+unklen1+len(knownstr2)+2 == i:
                
                    s.add(z3.simplify(z3.And(
                        c >= z3.BitVecVal(ord('a'), 8),
                        c <= z3.BitVecVal(ord('c'), 8),
                    )))

            if len(knownstr1)+unklen1+len(knownstr2)+unklen2+len(knownstr3) <= i < len(knownstr1)+unklen1+len(knownstr2)+unklen2+len(knownstr3)+unklen3:
                
                s.add(z3.simplify(z3.And(
                    c >= z3.BitVecVal(ord('a'), 8),
                    c <= z3.BitVecVal(ord('z'), 8),
                )))

            crc = z3.simplify(crc ^ z3.ZeroExt(56, c))
            for k in range(8):
                crc = z3.If(crc & ONE != ZERO, 
                    z3.LShR(crc, ONE) ^ poly,
                    z3.LShR(crc, ONE))

        s.add(crc == goal)

        while s.check() == z3.sat:
            m = s.model()
            r1 = m.eval(unknown1, True)
            r2 = m.eval(unknown2, True)
            r3 = m.eval(unknown3, True)
            
            s.add(z3.Or(unknown1 != r1, unknown2 != r2, unknown3 != r3))

            print(knownstr1 + \
                  ("".join(chr((r1.as_long() >> 8*i) & 0xff)for i in range(unklen1))) + \
                  knownstr2 + \
                  ("".join(chr((r2.as_long() >> 8*i) & 0xff)for i in range(unklen2))) + \
                  knownstr3 + \
                  ("".join(chr((r3.as_long() >> 8*i) & 0xff)for i in range(unklen3))) + \
                  knownstr4)
'''

if __name__ == '__main__':

    '''
    solve(0xda6a57db657a579c,  "vibrations/actors/samus/", ".bnvib", 11)
    solve(0xaf8216f4a943a1e1,  'actors/props/fan_cooldown/fx/', '.bcptl', 12)

    solve(0x944DBBEEFC88809C, '', '', 7)
    solve(0xa600a36d2851fc3a, '', '', 5)

    solve(0xC0AA43D5214C1213, '', '', 12)
    
    solve(0x881CD58AEECB897B, '', '', 4)
    solve(0x171a1c3aacbbb314, '', '', 8)
    solve(0x6595c9ab2f29a628, '', '', 8)
    solve(0xe82f1dbb74c4a315, '', '', 11)
    solve(0x40de2a8e03ac9d5b, '', '', 9)

    solve(0x9843EBECFB936F68, '', '_EXP', 10)
    solve(0xC22022339048C250, '', '_EXP', 10)
    
    solve(0xb020c7f089fc57fe, 'vibrations/cutscenes/cutscene_0043_rumble_03c_samus', '.bnvib', 14)
    '''

    #for line in open('../unknowns.txt'):
    #    csum, prefix, suffix, missing, _, _ = line.split('\t')
    #    csum = int(csum, 16)
    #    missing = int(missing)
    #    solve(csum, prefix, suffix, missing+1)

    solve(0xd6dce1a701a27a0c, 'actors/characters/samus/c', '', 14)
