#!/usr/bin/env bash

# Variables
OMZ_INSTALLER_URL="https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh"
ROOT_DIR=${ROOT_DIR:-..}

# Functions

## Install Oh-My-Zsh
install_ohmyzsh()
{
  if ! [ -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL ${OMZ_INSTALLER_URL})" --keep-zshrc ---unattended
  fi
}

# Logic

install_ohmyzsh