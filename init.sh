#!/bin/bash

user=$(whoami)
github_user=enesusta
repo=cheats

sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim

sudo apt-get install -y ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git-all 


sudo git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

sudo chown -R $user ~/.vim

curl https://raw.githubusercontent.com/enesusta/vimrc/master/.vimrc >> $HOME/.vimrc

sudo vim +BundleInstall +qall

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

brew install navi k0sproject/tap/k0sctl

git clone "https://github.com/${github_user}/${repo}" "$(navi info cheats-path)/${github_user}__${repo}"

