#!/bin/bash
# usage: render.sh <svgfile> <outdir> <hex>
f="$1"; out="$2"; hex="$3"; n=$(basename "$f" .svg)
sed "s/currentColor/#$hex/g" "$f" | rsvg-convert -w 192 -h 192 -o "$out/$n.png"
