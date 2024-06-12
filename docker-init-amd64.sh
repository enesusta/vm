#!/bin/bash

sudo apt-get update
sudo apt-get install -y ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git-all \
    docker.io

wget -O dc https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 && chmod +x dc && sudo mv dc /usr/bin/docker-compose

