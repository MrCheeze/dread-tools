import pprint

f=open('b.txt')

extension_mappings = {
    "lua":set(["lc"]),
    "lc":set(["lua"]),
}

oldline = ''
for line in f:
    line = line.split('\t')[0]
    if oldline.split('.')[0] == line.split('.')[0]:
        ext0 = oldline.split('.')[1]
        ext1 = line.split('.')[1]

        if ext0 not in extension_mappings:
            extension_mappings[ext0] = set()
        if ext1 not in extension_mappings:
            extension_mappings[ext1] = set()
            
        extension_mappings[ext0].add(ext1)
        extension_mappings[ext1].add(ext0)
        
        for x in extension_mappings[ext0]:
            extension_mappings[x].add(ext1)
            extension_mappings[ext1].add(x)
        for x in extension_mappings[ext1]:
            extension_mappings[x].add(ext0)
            extension_mappings[ext0].add(x)

        
    oldline = line
f.close

for x in extension_mappings:
    extension_mappings[x].add(x)
    extension_mappings[x].remove(x)

pprint.pprint(extension_mappings)
