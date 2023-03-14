#!/bin/bash

user=$(whoami)

sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim

sudo apt-get install -y ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git-all 

sudo chown -R $user ~/.vim

sudo git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/enesusta/vimrc/master/.vimrc >> $HOME/.vimrc

sudo vim +PluginInstall +qall

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

brew install navi k0sproject/tap/k0sctl

