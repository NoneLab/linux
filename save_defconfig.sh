#!/bin/bash

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#   Save Linux Kernel Config
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

LLVM_PATH=/lib/llvm-20/bin/

make LLVM=${LLVM_PATH} ARCH=x86_64 savedefconfig
./scripts/config --file defconfig --set-str INITRAMFS_SOURCE "THISISNOTREALPATH"
mv defconfig arch/x86/configs/none_defconfig
