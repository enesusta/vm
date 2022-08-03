#!/bin/bash

sudo apt install -y vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/enesusta/vimrc/master/.vimrc >> .vimrc

vim +PluginInstall +qall
