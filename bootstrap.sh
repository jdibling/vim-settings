#!/bin/bash

git submodule update --init --recursive

#
# Install YouCompleteMe and dependant libs
#
echo "Installing YouCompleteMe..."
cd bundle/YouCompleteMe
./install.sh --clang-completer
cd ../..
# if you have libclang available, this step is not needed
# ln -s `pwd`/3rdparty/libclang.so-RHEL6 `pwd`/bundle/YouCompleteMe/third_party/ycmd/libclang.so

