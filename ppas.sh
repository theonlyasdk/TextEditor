#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /home/user/Documents/LZProjects/TextEditor/TextEditor
OFS=$IFS
IFS="
"
/usr/bin/ld.bfd -b elf64-x86-64 -m elf_x86_64  --dynamic-linker=/lib64/ld-linux-x86-64.so.2  --gc-sections -s  -L. -o /home/user/Documents/LZProjects/TextEditor/TextEditor -T /home/user/Documents/LZProjects/TextEditor/link89261.res -e _start
if [ $? != 0 ]; then DoExitLink /home/user/Documents/LZProjects/TextEditor/TextEditor; fi
IFS=$OFS
