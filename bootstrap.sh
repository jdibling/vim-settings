#!/bin/bash

git submodule init
git submodule update --recursive

#
# Install YouCompleteMe and dependant libs
#
echo "Installing YouCompleteMe..."
cd bundle/YouCompleteMe
./install.sh --clang-completer
cd ../..
ln -s `pwd`/3rdparty/libclang.so-RHEL6 `pwd`/bundle/YouCompleteMe/third_party/ycmd/libclang.so

