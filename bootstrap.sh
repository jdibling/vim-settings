#!/bin/bash

git submodule update --init --recursive

#
# Install YouCompleteMe and dependant libs
#
echo "Installing YouCompleteMe..."
cd bundle/YouCompleteMe
./install.sh --clang-completer
cd ../..

# HACK:  The version of libclang.so that ships with YouCompleteMe is dependant
# upon a version of libedit.so that's not available on RHEL.
# Assuming we already have libclang.so that does work,
# let's get rid of the one that YCM gave us and symlink to ours.

rm `pwd`/bundle/YouCompleteMe/third_party/ycmd/libclang.so
ln -s `pwd`/3rdparty/libclang.so-RHEL6 `pwd`/bundle/YouCompleteMe/third_party/ycmd/libclang.so

# if you have libclang available, this step is not needed
# ln -s `pwd`/3rdparty/libclang.so-RHEL6 `pwd`/bundle/YouCompleteMe/third_party/ycmd/libclang.so

# Update the user's vimrc
if [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc-save-`date +"%m%d%Y"`
fi

ln -s vimrc ~/.vimrc
