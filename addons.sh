#!/usr/bin/env bash

# Variables
LC_ALL="C"

# Functions

## Check if a function exists
fn_exists()
{
  type $1 | grep -q 'shell function'
}

## Install Homebrew (macOS)
install_homebrew()
{
  if ! command -v brew &> /dev/null; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Updating homebrew..."
    brew update
  fi
}

## Install PyEnv
install_pyenv()
{
  if ! fn_exists pyenv &> /dev/null; then
    echo "Installing PyEnv..."
    curl -fsSL https://pyenv.run | bash
    #git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
  fi
}

# Logic

## macOS Specific
if [[ $(uname -s) == 'Darwin' ]]; then
  install_homebrew
fi

install_pyenv