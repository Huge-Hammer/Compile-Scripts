 #!/bin/bash

echo
echo "/*******************************/"
echo "/*    重新载入软件包信息...    */"
echo "/*           Reload...         */"
echo "/*******************************/"
sudo apt-get update

 #安装petalinux所需的软件环境
 echo 
 echo "/*********************************/"
 echo "/*          安装开发包...        */"
 echo "/* Setup the develop packages... */"
 echo "/*********************************/"
 
 sudo apt-get install --force-yes -y tofrodos
 sudo apt-get install --force-yes -y iproute
 sudo apt-get install --force-yes -y gawk
 sudo apt-get install --force-yes -y xvfb
 sudo apt-get install --force-yes -y git
 sudo apt-get install --force-yes -y make
 sudo apt-get install --force-yes -y net-tools
 sudo apt-get install --force-yes -y libncurses5-dev
 sudo apt-get install --force-yes -y zlib1g:i386
 sudo apt-get install --force-yes -y libssl-dev
 sudo apt-get install --force-yes -y flex
 sudo apt-get install --force-yes -y bison
 sudo apt-get install --force-yes -y libselinux1
 sudo apt-get install --force-yes -y gnupg
 sudo apt-get install --force-yes -y wget
 sudo apt-get install --force-yes -y diffstat
 sudo apt-get install --force-yes -y chrpath
 sudo apt-get install --force-yes -y socat
 sudo apt-get install --force-yes -y xterm
 sudo apt-get install --force-yes -y autoconf
 sudo apt-get install --force-yes -y libtool  
 sudo apt-get install --force-yes -y texinfo 
 sudo apt-get install --force-yes -y gcc-multilib    
 sudo apt-get install --force-yes -y libsdl1.2-dev
 sudo apt-get install --force-yes -y libglib2.0-dev