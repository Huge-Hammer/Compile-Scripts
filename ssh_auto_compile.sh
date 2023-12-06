#!/bin/sh
###
 # @Description: 
 # @Version: 1.0
 # @Author: Hammer_Zhuge
 # @Date: 2023-11-19 15:58:12
 # @LastEditors: Hammer_Zhuge
 # @LastEditTime: 2023-11-19 16:02:29
### 

BASE=`pwd`
BUILD_HOST=arm-linux-gnueabihf
OUTPUT_PATH=${BASE}/arm_install

make_dirs () {
    cd ${BASE} && mkdir compressed arm_install source -p
}

download_package () {
    cd ${BASE}/compressed
    wget https://www.zlib.net/fossils/zlib-1.2.12.tar.gz
    wget https://www.openssl.org/source/openssl-1.1.1q.tar.gz
    wget http://ftp5.usa.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.0p1.tar.gz
}

tar_package () {
    cd ${BASE}/compressed
    ls * > /tmp/list.txt
    for TAR in `cat /tmp/list.txt`
    do
        tar -xf $TAR -C  ../source
    done
    rm -rf /tmp/list.txt
}

set_env () {
    source /opt/pkg/petalinux/2018.3/settings.sh
}

make_zlib () {
    cd ${BASE}/source/zlib*

    ./configure --prefix=${OUTPUT_PATH}/zlib

    #Makefile 中的gcc和ar替换成自己的
    sed -i '19,19s/gcc/arm-linux-gnueabihf-gcc/g' Makefile
    sed -i '30,30s/gcc/arm-linux-gnueabihf-gcc/g' Makefile
    sed -i '31,31s/gcc/arm-linux-gnueabihf-gcc/g' Makefile
    sed -i '39,39s/ar/arm-linux-gnueabihf-ar/g' Makefile

    make -j8 && make install
}

make_openssl () {
    cd ${BASE}/source/openssl*

    ./config shared no-asm \
    --prefix=${OUTPUT_PATH}/openssl \
    --openssldir=${BASE}/source/openssl-1.1.1q/ssl

    #CROSS_COMPILE= 添加 arm-linux-gnueabihf-
    sed -i '92,92s/CROSS_COMPILE=/CROSS_COMPILE=arm-linux-gnueabihf-/g' Makefile
    #去掉 -m64 标签，否则会报错
    sed -i '126,126s/-m64//g' Makefile
    sed -i '127,127s/-m64//g' Makefile
    sed -i '129,129s/-m64//g' Makefile

    make -j8 && make install
}

make_openssh () {
    cd ${BASE}/source/openssh*

    ./configure --host=arm-linux \
    --with-zlib=${OUTPUT_PATH}/zlib \
    --with-ssl-dir=${OUTPUT_PATH}/openssl \
    --disable-etc-default-login --disable-strip \
    CC=${BUILD_HOST}-gcc \
    AR=${BUILD_HOST}-ar

    make -j8
}

make_dirs
#set_env
tar_package
make_zlib
make_openssl
make_openssh
