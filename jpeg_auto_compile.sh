#!/bin/sh
###
 # @Description: 
 # @Version: 1.0
 # @Author: Hammer_Zhuge
 # @Date: 2023-11-19 18:19:24
 # @LastEditors: Hammer_Zhuge
 # @LastEditTime: 2023-11-19 18:24:33
### 
BASE=`pwd`
BUILD_HOST=arm-linux-gnueabihf
OUTPUT_PATH=${BASE}/arm_install

make_jpeg () {
	cd ${BASE}/jpeg-*
	
	./configure --host=${BUILD_HOST} --prefix=${OUTPUT_PATH}
	
	make -j16
	make install
}

make_jpeg
