#!/bin/bash
apt-get install libboost-all-dev
if [ -d build ] 
then
	rm -r build
fi
mkdir build
cd    build 

export BlackmagicSDK_DIR="/files_local/BM_DECKL_SDK_10.11.4/BM_DECKL_SDK_10.11.4"
export BOOST_ROOT="/files_local/blackmagic-opencv-test/boost_1_69_0"
export LD_LIBRARY_PATH="/usr/lib/blackmagic/DesktopVideo:$LD_LIBRARY_PATH"

cmake ..
make
make install
