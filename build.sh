#!/bin/bash

#!!!!!!!!!!!!!!!!!!!!!!!!!
#   Build Linux Kernel
#!!!!!!!!!!!!!!!!!!!!!!!!!

LLVM_PATH=/lib/llvm-20/bin/
INITRAMFS_PATH=${HOME}/out/initramfs

make LLVM=${LLVM_PATH} ARCH=x86_64 none_defconfig
./scripts/config --set-str INITRAMFS_SOURCE "${INITRAMFS_PATH}"
make LLVM=${LLVM_PATH} ARCH=x86_64 bzImage -j$(nproc)