import struct

def decode_adrp_add(adrp_addr, adrp_inst, add_inst):
    adrp_inst = int.from_bytes(adrp_inst, 'little')

    adrp_offset = (adrp_inst & 0x60000000) >> 17
    adrp_offset |= (adrp_inst & 0x00FFFFE0) << 9

    add_inst = int.from_bytes(add_inst, 'little')

    add_offset = (add_inst & 0x003FFC00) >> 10
    
    return ((adrp_addr + adrp_offset)&0xFFFFFFF000) + add_offset

def decode_adrp_ldr_ldr(filedata, adrp_addr, adrp_inst, ldr1_inst, ldr2_inst):
    adrp_inst = int.from_bytes(adrp_inst, 'little')

    adrp_offset = (adrp_inst & 0x60000000) >> 17
    adrp_offset |= (adrp_inst & 0x00FFFFE0) << 9

    ldr1_inst = int.from_bytes(ldr1_inst, 'little')

    ldr1_offset = (ldr1_inst & 0x003FFC00) >> 7

    ldr2_inst = int.from_bytes(ldr2_inst, 'little')

    ldr2_offset = (ldr2_inst & 0x003FFC00) >> 7

    if ldr2_offset != 0: # not implementeed
        return 0xFFFFFFFFFFFF

    ptr_offset = ((adrp_addr + adrp_offset)&0xFFFFFFF000) + ldr1_offset

    return ptr_offset

    #ptr = filedata[ptr_offset:ptr_offset + 8]
    #print(hex(ptr_offset))
    #assert len(ptr) == 8
    
    #ptr = int.from_bytes(ptr, 'little')
    #return ptr

def decode_adrp_ldr(filedata, adrp_addr, adrp_inst, ldr1_inst):
    adrp_inst = int.from_bytes(adrp_inst, 'little')

    adrp_offset = (adrp_inst & 0x60000000) >> 17
    adrp_offset |= (adrp_inst & 0x00FFFFE0) << 9

    ldr1_inst = int.from_bytes(ldr1_inst, 'little')

    ldr1_offset = (ldr1_inst & 0x003FFC00) >> 7

    return ((adrp_addr + adrp_offset)&0xFFFFFFF000) + ldr1_offset

def get_bl(addr, inst):
    inst = int.from_bytes(inst, 'little')
    if (inst & 0xFC000000) != 0x94000000:
        return None
    offset = (inst & 0x03FFFFFF) << 2
    if offset & 0x08000000:
        offset -= 0x10000000
    return addr+offset
    

def is_bl_hashfunction_caller(addr, inst):
    return get_bl(addr, inst) == 0x3D4
def is_bl_hashfunction(addr, inst):
    return get_bl(addr, inst) == 0x1570
def is_bl_registerfield(addr, inst):
    return get_bl(addr, inst) == 0x96234
def is_bl_addenumvalue(addr, inst):
    return get_bl(addr, inst) == 0x148b8

def is_b(inst):
    inst = int.from_bytes(inst, 'little')
    return (inst & 0xFC000000) == 0x14000000

def is_adrp(inst, out_register=None):
    inst = int.from_bytes(inst, 'little')
    if (inst & 0x9F000000) != 0x90000000:
        return False
    if out_register is not None and (inst & 0x0000001F) != out_register:
        return False
    return True

def is_add(inst, out_register=None):
    inst = int.from_bytes(inst, 'little')
    if (inst & 0xFFC00000) != 0x91000000:
        return False
    if out_register is not None and (inst & 0x0000001F) != out_register:
        return False
    return True

def is_ldr(inst, out_register=None):
    inst = int.from_bytes(inst, 'little')
    if (inst & 0xFFC00000) != 0xF9400000:
        return False
    if out_register is not None and (inst & 0x0000001F) != out_register:
        return False
    return True

def decode_str(filedata, i):
    if i >= len(filedata):
        return '--- UNDEFINED %X ---'%i
    s = ''
    char = ''
    while char != '\x00':
        s += char
        char = chr(filedata[i])
        i += 1
    return s

def is_ret(inst):
    return inst == b'\xc0\x03\x5f\xd6'


funcs = {
}

def is_sub_sp(inst):
    inst = int.from_bytes(inst, 'little')
    return (inst & 0xFFC003FF) == 0xD10003FF


if __name__ == '__main__':

    f = open('dread_exefs/main_uncompressed','rb')
    f.seek(0x100)
    filedata = f.read()
    filedata2 = filedata[0x11F5060:0x1545358]
    f.close()

    '''

    newfunction = True
    func_start = 0

    for i in range(0, len(filedata), 4):
        if newfunction and is_sub_sp(filedata[i:i+4]):
            func_start = i
            
        elif is_bl_hashfunction_caller(i, filedata[i:i+4]):
            adrp_inst = filedata[i-16:i-12]
            add_inst = filedata[i-12:i-8]
            if is_adrp(adrp_inst) and is_add(add_inst):
                string = decode_str(filedata, decode_adrp_add(i-16, adrp_inst, add_inst))
                if newfunction:
                    newfunction = False
                    funcs[func_start] = {'name':string, 'fields':[]}
                if get_bl(i+4, filedata[i+4:i+8]):
                    read_field = {'name':string, 'readFunc':get_bl(i+4, filedata[i+4:i+8])}
                    funcs[func_start]['fields'].append(read_field)
            
        elif is_bl_hashfunction(i, filedata[i:i+4]):
            adrp_inst = filedata[i-12:i-8]
            add_inst = filedata[i-8:i-4]
            if is_adrp(adrp_inst) and is_add(add_inst):
                string = decode_str(filedata, decode_adrp_add(i-12, adrp_inst, add_inst))
                print(hex(func_start), hex(i), string)
                if newfunction:
                    newfunction = False
                    funcs[func_start] = {'name':string, 'fields':[]}
                if get_bl(i+4, filedata[i+4:i+8]):
                    read_field = {'name':string, 'readFunc':get_bl(i+4, filedata[i+4:i+8])}
                    funcs[func_start]['fields'].append(read_field)
                    
        elif is_ret(filedata[i:i+4]):
            newfunction = True

    for addr in funcs:
        print(hex(addr))
        print(funcs[addr]['name'])
        for field in funcs[addr]['fields']:
            print(field['name'])
            print(hex(field['readFunc']))
            print(funcs[field['readFunc']]['name'])
        print()

    '''

    last_adrp_add = -1
    last_adrp_ldr_ldr = -1
    last_add_str = None
    last_ldr_str = None
    functstart = -1

    ldr_map = {
        0x1C62CF0: 'key',
        0x1C62D08: 'element',
    }

    is_newfunc_field = True
    is_newfunc_enum = True

    ptr_map = {}
    ptr_vals = set()

    for i in range(0, len(filedata2), 24):
        key,_,_,_,val,_ = struct.unpack('<IIIIII',filedata2[i:i+24])
        ptr_map[key] = val
        ptr_vals.add(val)

    field_funcs = []
    enum_funcs = []

    f2_buf = []
    f3_buf = []
    
    for i in range(0, len(filedata), 4):

        if filedata[i:i+4] == b'\xc0\x03\x5f\xd6':
            is_newfunc_field = True
            is_newfunc_enum = True
            funcstart = i

        if i in ptr_vals:
            is_newfunc_field = True
            is_newfunc_enum = True
            funcstart = i

        if is_adrp(filedata[i:i+4]) and is_add(filedata[i+4:i+8], out_register=1):
            last_adrp_add = i
            last_add_str = decode_str(filedata, decode_adrp_add(i, filedata[i:i+4], filedata[i+4:i+8]))
        if is_adrp(filedata[i:i+4]) and is_ldr(filedata[i+4:i+8]) and is_ldr(filedata[i+8:i+12]):
            last_adrp_ldr_ldr = i
            key = decode_adrp_ldr_ldr(filedata, i, filedata[i:i+4], filedata[i+4:i+8], filedata[i+8:i+12])
            last_ldr_str = ldr_map[key] if key in ldr_map else '--- INVALID %X ---'%key
            
        if is_bl_registerfield(i, filedata[i:i+4]):
            instrs_since_add = (i - last_adrp_add) // 4
            instrs_since_ldr = (i - last_adrp_ldr_ldr) // 4
            assert instrs_since_add <= 19 or instrs_since_ldr <= 19
            assert not (instrs_since_add <= 19 and instrs_since_ldr <= 19)

            if is_newfunc_field:
                is_newfunc_field = False
                f2_buf.append(funcstart)
                field_funcs.append(funcstart)

            if instrs_since_add <= 19:
                f2_buf.append('\tvoid %s;\n'%(last_add_str))
            else:
                f2_buf.append('\tvoid %s;\n'%(last_ldr_str))
            
                
        if is_bl_addenumvalue(i, filedata[i:i+4]):
            instrs_since_add = (i - last_adrp_add) // 4
            
            assert instrs_since_add <= 8

            if is_newfunc_enum:
                is_newfunc_enum = False
                f3_buf.append(funcstart)
                enum_funcs.append(funcstart)
            
            f3_buf.append('\t%s,\n'%(last_add_str))

    f2_buf.append('}')
    f3_buf.append('}')

    name_map = {}

    for i in range(0, len(filedata), 4):

        if is_adrp(filedata[i:i+4]) and is_add(filedata[i+4:i+8], out_register=1):
            last_adrp_add = i
            last_add_str = decode_str(filedata, decode_adrp_add(i, filedata[i:i+4], filedata[i+4:i+8]))
            
        if is_adrp(filedata[i:i+4], out_register=2) and is_ldr(filedata[i+4:i+8], out_register=2):
            instrs_since_add = (i - last_adrp_add) // 4
            ptr = decode_adrp_ldr(filedata, i, filedata[i:i+4], filedata[i+4:i+8])
            if ptr in ptr_map:
                label = ptr_map[ptr]
                if label in enum_funcs:
                    assert instrs_since_add <= 28
                    name_map[label] = last_add_str
        if is_adrp(filedata[i:i+4], out_register=2) and is_ldr(filedata[i+8:i+12], out_register=2):
            instrs_since_add = (i - last_adrp_add) // 4
            ptr = decode_adrp_ldr(filedata, i, filedata[i:i+4], filedata[i+8:i+12])
            if ptr in ptr_map:
                label = ptr_map[ptr]
                if label in enum_funcs:
                    assert instrs_since_add <= 28
                    name_map[label] = last_add_str
            
        if is_adrp(filedata[i:i+4], out_register=4) and is_ldr(filedata[i+4:i+8], out_register=4):
            instrs_since_add = (i - last_adrp_add) // 4
            ptr = decode_adrp_ldr(filedata, i, filedata[i:i+4], filedata[i+4:i+8])
            if ptr in ptr_map:
                label = ptr_map[ptr]
                if label in field_funcs:
                    assert instrs_since_add <= 28
                    name_map[label] = last_add_str
        if is_adrp(filedata[i:i+4], out_register=4) and is_ldr(filedata[i+8:i+12], out_register=4):
            instrs_since_add = (i - last_adrp_add) // 4
            ptr = decode_adrp_ldr(filedata, i, filedata[i:i+4], filedata[i+8:i+12])
            if ptr in ptr_map:
                label = ptr_map[ptr]
                if label in field_funcs:
                    assert instrs_since_add <= 28
                    name_map[label] = last_add_str
        if is_adrp(filedata[i:i+4], out_register=4) and is_ldr(filedata[i+12:i+16], out_register=4):
            instrs_since_add = (i - last_adrp_add) // 4
            ptr = decode_adrp_ldr(filedata, i, filedata[i:i+4], filedata[i+12:i+16])
            if ptr in ptr_map:
                label = ptr_map[ptr]
                if label in field_funcs:
                    assert instrs_since_add <= 28
                    name_map[label] = last_add_str


    f2=open('fields.cpp','w')
    f3=open('enums.cpp','w')
    
    for i,line in enumerate(f2_buf):
        if type(line) == str:
            f2.write(line)
        else:
            if i != 0:
                f2.write('};\n')
            if line in name_map:
                f2.write('class %s {\n'%(name_map[line]))
            else:
                f2.write('class unk_%s {\n'%(hex(line)))
    
    for i,line in enumerate(f3_buf):
        if type(line) == str:
            f3.write(line)
        else:
            if i != 0:
                f3.write('};\n')
            if line in name_map:
                f3.write('enum %s {\n'%(name_map[line]))
            else:
                f3.write('enum unk_%s {\n'%(hex(line)))

    f2.close()
    f3.close()
    
    
