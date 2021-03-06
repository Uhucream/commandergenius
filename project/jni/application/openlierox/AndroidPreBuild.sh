#!/bin/sh

[ -e AndroidData/data.zip.xz ] && exit 0
cd src/share/gamedir
rm -f ../data.zip
zip -0 -r ../data.zip .
cd ../../..
xz -9 < src/share/data.zip > AndroidData/data.zip.xz
