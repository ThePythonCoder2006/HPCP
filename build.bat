@echo off
gcc -shared -Os -s -o bin/libhpcp.dll src/hpcp.c -I ./include
gcc -shared -Os -s -o lib/libhpcp.dll src/hpcp.c -I ./include
gcc -Os -s -L. ./main.c -L ./lib -lhpcp -o ./bin/main -I ./include
cd bin
main
cd ../
pause