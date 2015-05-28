#!/bin/bash

git submodule update --init --recursive

# Update the user's vimrc
if [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc-save-`date +"%m%d%Y"`
fi

ln -s vimrc ~/.vimrc
