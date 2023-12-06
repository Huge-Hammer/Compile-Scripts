#!/bin/sh
###
 # @Description: 
 # @Version: 1.0
 # @Author: Hammer_Zhuge
 # @Date: 2023-11-19 18:19:24
 # @LastEditors: Hammer_Zhuge
 # @LastEditTime: 2023-11-21 13:35:22
### 
BASE=`pwd`
BUILD_HOST=arm-linux-gnueabihf
OUTPUT_PATH=${BASE}/arm_install


make_tslib () {
	cd ${BASE}/tslib-1.22
	
	./configure --host=${BUILD_HOST} --prefix=${OUTPUT_PATH} \
	CC=arm-linux-gnueabihf-gcc
	
	make -j16
	make install
}

make_tslib
