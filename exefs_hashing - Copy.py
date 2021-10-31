def decode_adrp_add(adrp_addr, adrp_inst, add_inst):
    adrp_inst = int.from_bytes(adrp_inst, 'little')

    adrp_offset = (adrp_inst & 0x60000000) >> 17
    adrp_offset |= (adrp_inst & 0x00FFFFE0) << 9

    add_inst = add_inst = int.from_bytes(add_inst, 'little')

    add_offset = (add_inst & 0x003FFC00) >> 10
    
    return ((adrp_addr + adrp_offset)&0xFFFFFFF000) + add_offset

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

def is_adrp(inst):
    inst = int.from_bytes(inst, 'little')
    return (inst & 0x9F000000) == 0x90000000

def is_add(inst):
    inst = int.from_bytes(inst, 'little')
    return (inst & 0xFFC00000) == 0x91000000

def decode_str(filedata, i):
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
    f.close()

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
