#!/bin/sh

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export CFLAGS="-O4 -mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard"
export CXXFLAGS="$CFLAGS"


cd linux/linux*
make clean
make mrproper

make hi3516d_full_defconfig 


make -j 4 uImage dtsb

# modules


