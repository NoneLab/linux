#!/bin/bash

#!!!!!!!!!!!!!!!!!!!!!!!!!
#   Build Linux Kernel
#!!!!!!!!!!!!!!!!!!!!!!!!!

LLVM_PATH=/lib/llvm-20/bin/

make LLVM=${LLVM_PATH} ARCH=x86_64 none_defconfig
make LLVM=${LLVM_PATH} ARCH=x86_64 bzImage -j$(nproc)