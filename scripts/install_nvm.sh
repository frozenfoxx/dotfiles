#!/usr/bin/env bash

# Variables
LC_ALL="C"
NVM_VERSION=$(curl -s "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | grep '"tag_name":' | cut -d '"' -f 4)

# Functions

## Check if a function exists
fn_exists()
{
  type $1 | grep -q 'shell function'
}

## Install NVM
install_nvm()
{
  if ! fn_exists pyenv &> /dev/null; then
    rm -rf ~/.nvm
    echo "Installing NVM..."
    curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | bash
  fi
}

# Logic

install_nvm
