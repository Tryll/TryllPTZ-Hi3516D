#!/bin/sh



wget -O master.zip https://github.com/jerryscript-project/iotjs/archive/master.zip


git clone --depth 1 --single-branch https://github.com/jerryscript-project/iotjs.git
  
cd iotjs

export CMAKE_C_COMPILER="$CROSS_COMPILE"gcc

