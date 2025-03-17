#!/usr/bin/env bash

# Variables
LC_ALL="C"

# Functions

## Check if a function exists
fn_exists()
{
  type $1 | grep -q 'shell function'
}

## Install PyEnv
install_pyenv()
{
  if ! fn_exists pyenv &> /dev/null; then
    rm -rf ~/.pyenv
    echo "Installing PyEnv..."
    curl -fsSL https://pyenv.run | bash
  fi
}

# Logic

install_pyenv