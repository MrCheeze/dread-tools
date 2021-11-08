import z3

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
                        c == z3.BitVecVal(ord('_'), 8),
                        unklen <= 12,
                    ),
                    z3.And(
                        c >= z3.BitVecVal(ord('0'), 8),
                        c <= z3.BitVecVal(ord('9'), 8),
                        unklen <= 12,
                    ),
                    z3.And(
                        c == z3.BitVecVal(ord('-'), 8),
                        unklen <= 10,
                    ),
                    z3.And(
                        c == z3.BitVecVal(ord(' '), 8),
                        unklen <= 10,
                    ),
                )))

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

if __name__ == '__main__':
    
    solve(0xda6a57db657a579c,  "vibrations/actors/samus/", ".bnvib", 11)
    solve(0xaf8216f4a943a1e1,  'actors/props/fan_cooldown/fx/', '.bcptl', 12)
    
