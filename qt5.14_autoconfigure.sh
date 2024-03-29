./configure -prefix /home/hammer/cross_compile/qt5-arm/arm_install \
-opensource  \
-confirm-license  \
-release  \
-strip  \
-shared  \
-xplatform  linux-arm-gnueabi-g++  \
-optimized-qmake  \
-c++std  c++11  \
--rpath=no  \
-pch  \
-skip  qt3d  \
-skip  qtactiveqt  \
-skip  qtandroidextras  \
-skip  qtcanvas3d  \
-skip  qtconnectivity  \
-skip  qtdatavis3d  \
-skip  qtdoc  \
-skip  qtgamepad  \
-skip  qtlocation  \
-skip  qtmacextras  \
-skip  qtnetworkauth  \
-skip  qtpurchasing  \
-skip  qtquick3d \
-skip  qtremoteobjects  \
-skip  qtscript  \
-skip  qtscxml  \
-skip  qtsensors  \
-skip  qtspeech  \
-skip  qtsvg  \
-skip  qttools  \
-skip  qttranslations  \
-skip  qtwayland  \
-skip  qtwebengine  \
-skip  qtwebview  \
-skip  qtwinextras  \
-skip  qtx11extras  \
-skip  qtxmlpatterns  \
-make  libs  \
-make  examples  \
-nomake  tools  -nomake  tests  \
-gui  \
-widgets  \
-dbus-runtime  \
--glib=no  \
--iconv=no  \
--pcre=qt  \
--zlib=qt  \
-no-openssl  \
--freetype=qt  \
--harfbuzz=qt  \
-no-opengl  \
-linuxfb  \
--xcb=no  \
-tslib  \
--libpng=qt  \
--libjpeg=qt  \
--sqlite=qt  \
-plugin-sql-sqlite  \
-I/home/hammer/cross_compile/tslib-arm/arm_install/include \
-L/home/hammer/cross_compile/tslib-arm/arm_install/lib \
-recheck-all 


