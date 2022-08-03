#!/bin/bash

sudo apt-get update
sudo apt-get install -y ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git-all \
    docker.io \
    docker-compose

