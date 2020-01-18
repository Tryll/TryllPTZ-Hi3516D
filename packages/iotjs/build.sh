#!/bin/sh


SRC=`dirname "$(readlink -f "$0")"`

cd $SRC
git clone --depth 1 --single-branch https://github.com/jerryscript-project/iotjs.git
  
cd iotjs

./tools/build.py --buildtype=release --target-arch=arm --target-os=linux --target-board=rpi2 --sysroot $ROOTFS 


cp ./build/arm-linux/release/bin/iotjs ../../../target/usr/bin/



