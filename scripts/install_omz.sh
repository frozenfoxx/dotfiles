#!/usr/bin/env bash

# Variables
OMZ_INSTALLER_URL="https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh"
ROOT_DIR=${ROOT_DIR:-..}

# Functions

## Install Oh-My-Zsh
install_ohmyzsh()
{
  if [ -d ~/.oh-my-zsh ]; then
    if [ ! -d ~/.oh-my-zsh/.git ]; then
      rm -rf ~/.oh-my-zsh
    fi
  fi

  sh -c "$(curl -fsSL ${OMZ_INSTALLER_URL})" --keep-zshrc ---unattended || :
}

# Logic

install_ohmyzsh