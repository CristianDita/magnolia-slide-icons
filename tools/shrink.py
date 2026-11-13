import sys,os
from PIL import Image
from concurrent.futures import ProcessPoolExecutor
def f(p):
    im=Image.open(p).convert('RGBA')
    q=im.quantize(colors=32,method=Image.Quantize.FASTOCTREE)
    q.save(p,optimize=True)
files=[os.path.join(dp,x) for d in sys.argv[1:] for dp,_,fs in os.walk(d) for x in fs if x.endswith('.png')]
with ProcessPoolExecutor(16) as ex: list(ex.map(f,files,chunksize=64))
print(len(files))
