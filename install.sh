#!/bin/bash
#-------------------------------------------
# Author      : LHearen
# E-mail      : LHearen@126.com
# Time        : 2016-11-28 10:45
# Description : Install latest Vim and configure
#   it for basic personal use
#-------------------------------------------

#http://www.fullybaked.co.uk/articles/installing-latest-vim-on-centos-from-source

echo "Copy vimrc..."
cp -r etc/vimrc $HOME/.vimrc
echo "Copy colors..."
rm -rf $HOME/.vim/bundle
mkdir -p $HOME/.vim/colors
for color in etc/vim/colors/*
do
    cp $color $HOME/.vim/colors
done
echo "Clone Vundle.vim..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Run BundleInstall in vim now!"
