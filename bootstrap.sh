#!/bin/bash

git submodule init
git submodule update --recursive
ln -s `pwd`/3rdparty/libclang.so-RHEL6 `pwd`/bundle/YouCompleteMe/third_party/ycmd/libclang.so

