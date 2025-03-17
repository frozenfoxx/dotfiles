#!/usr/bin/env bash

# Variables
LC_ALL="C"

# Functions

## Check shell
check_shell()
{
  if [[ ! $0 = "-zsh" ]]; then
    echo "Shell: $(echo $0 | tr -d '-')"

    # Check if zsh is installed
    if [[ -f $(which zsh) ]]; then
      echo "Changing default shell to zsh, input user password:"
      chsh -s $(which zsh)
      . ~/.zshrc
    else
      echo "zsh is not installed. Please install it first, set it to default, and relogin"
      exit 1
    fi
  else
    echo "Shell: zsh"
  fi
}

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

## Install Oh-My-Zsh
install_omz()
{
  if ! fn_exists omz &> /dev/null; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
    echo "Updating oh-my-zsh..."
    omz update
  fi
}

## Install PyEnv
install_pyenv()
{
  if ! fn_exists pyenv &> /dev/null; then
    echo "Installing PyEnv..."
    curl -fsSL https://pyenv.run | bash
    git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
  fi
}

# Logic

## macOS Specific
if [[ $(uname -s) == 'Darwin' ]]; then
  install_homebrew
fi

check_shell
install_omz
install_pyenv