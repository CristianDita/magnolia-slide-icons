#!/bin/bash
# Rebuild PNGs: npm pack lucide-static@<ver>, extract to ./src, then run from repo root.
set -e
SRC=${1:-src/package/icons}
for c in 00b054:green 013035:dark ffffff:white; do hex=${c%%:*}; name=${c##*:}; mkdir -p lucide/$name
  ls $SRC/*.svg | xargs -P 16 -I{} tools/render.sh {} lucide/$name $hex; done
python3 tools/shrink.py lucide
