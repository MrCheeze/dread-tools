import glob
import os
from PIL import Image, ImageDraw
import numpy as np

foo = []

for fname in glob.glob('unpacked/system/vibrations/**', recursive=True):

    if os.path.isdir(fname):
        continue
    
    fname_short = fname.replace('\\','/').replace('unpacked/system/','').replace('vibrations/','').replace('.bnvib','')


    f = open(fname,'rb')
    assert f.read(8) == b'\x04\x00\x00\x00\x03\x00\xC8\x00'
    length = int.from_bytes(f.read(4), 'little')
    assert length % 4 == 0

    left = []
    right = []

    img = Image.new('RGB', (length//4, 512), color=(255,255,255))
    draw = ImageDraw.Draw(img)

    for i in range(length//4):
        l_val = int.from_bytes(f.read(2), 'big')
        r_val = int.from_bytes(f.read(2), 'big')
        left.append(l_val)
        right.append(r_val)

        draw.line((i,255,i,255 - l_val//256), (255,0,0))
        draw.line((i,256,i,256 + r_val//256), (0,0,255))
    assert f.read() == b''
    f.close()

    left = np.array(left)
    right = np.array(right)

    q = 5

    if 3344/q < length < 3344*q and 10784/q < np.mean(left) < 10784*q and 139554021/q < np.var(left) < 139554021*q and 2203/q < np.mean(right) < 2203*q and 19245718/q < np.var(right) < 19245718*q and 374/q < left[0] < 374*q and 918/q < right[0] < 918*q and 635/q < left[-1] < 635*q and 150/q < right[-1] < 150*q:
        foo.append((length, np.mean(left), np.var(left), np.mean(right), np.var(right), left[0], right[0], left[-1], right[-1], fname_short))

        outfilename = 'bnvib/'+fname_short.replace('/','_')+'.png'
        img.save(outfilename)

for x in sorted(foo):
    print(x)
