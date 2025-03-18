#!/usr/bin/env bash

# Variables
ROOT_DIR=${ROOT_DIR:-..}

# Functions
## Install Apt packages
install_apt()
{
  if [ "$(uname -s)" = "Linux" ]; then
    echo "Updating and installing packages..."
    sudo apt-get update
    sudo apt-get install -y $(cat ${ROOT_DIR}/apt/packages.txt)
  fi
}

# Logic

install_apt