#!/usr/bin/env bash

# macOS Specific
if [[ $(uname -s) == 'Darwin' ]]; then

  # Install Homebrew
  if ! command -v brew &> /dev/null; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Updating homebrew..."
    brew update
  fi
fi

# Install oh-my-zsh
if ! command -v omz &> /dev/null; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Updating oh-my-zsh..."
  omz update
fi

# Install PyEnv
if ! command -v pyenv &> /dev/null; then
  echo "Installing PyEnv..."
  curl -fsSL https://pyenv.run | bash
  git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
fi

# Change default shell
if [[ ! $0 = "-zsh" ]]; then
  echo "Changing default shell to zsh..."
  chsh -s /bin/zsh
else
  echo 'Already using zsh'
fi