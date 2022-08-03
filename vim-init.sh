#!/bin/bash

sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim

sudo git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/enesusta/vimrc/master/.vimrc >> $HOME/.vimrc

sudo vim +PluginInstall +qall
