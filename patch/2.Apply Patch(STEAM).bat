@echo off
CHCP 65001
mkdir output
echo Place the files to be patched in the "original" directory with the following names:
echo --------------------
echo data.win
echo audiogroup1.dat
echo audiogroup2.dat
echo --------------------
echo Patched files will be in the "output" directory
pause
exec\xdelta3_x86_64_win.exe -v -d -s ".\original\data.win" ".\patch_files\data.win.steam.xdelta" ".\output\data.win"
exec\xdelta3_x86_64_win.exe -v -d -s ".\original\audiogroup1.dat" ".\patch_files\audiogroup1.dat.xdelta" ".\output\audiogroup1.dat"
exec\xdelta3_x86_64_win.exe -v -d -s ".\original\audiogroup2.dat" ".\patch_files\audiogroup2.dat.xdelta" ".\output\audiogroup2.dat"
echo Completed!
@pause
