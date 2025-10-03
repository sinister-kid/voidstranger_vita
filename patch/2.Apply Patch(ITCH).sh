#!/bin/sh
cd "$(cd "$(dirname "$0")" && pwd)"
mkdir ./output
chmod +x ./exec/xdelta3_x64_linux
echo Place the files to be patched in the \"original\" directory with the following names:
echo --------------------
echo "data.win"
echo "audiogroup1.dat"
echo "audiogroup2.dat"
echo --------------------
echo Patched files will be in the \"output\" directory
read -p "Press enter to continue..." inp
./exec/xdelta3_x64_linux -v -d -s "./original/data.win" "patch_files/data.win.itch.xdelta" "./output/data.win"
./exec/xdelta3_x64_linux -v -d -s "./original/audiogroup1.dat" "patch_files/audiogroup1.dat.xdelta" "./output/audiogroup1.dat"
./exec/xdelta3_x64_linux -v -d -s "./original/audiogroup2.dat" "patch_files/audiogroup2.dat.xdelta" "./output/audiogroup2.dat"
