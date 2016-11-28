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
cp -r etc/vim/* $HOME/.vim
echo "Clone Vundle.vim..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Run BundleInstall in vim now!"
