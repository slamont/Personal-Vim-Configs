#!/bin/bash

## The following few lines should already be done if you are reading this file 
# cd ~
# git clone https://github.com/slamont/Personal-Vim-Configs.git .vim
# cd .vim
# ./setup_vim.sh 

git submodule update --init

cd ~
ln -s -f .vim/vimrc .vimrc


