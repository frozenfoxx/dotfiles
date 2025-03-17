#!/usr/bin/env bash

# Variables
HOMEBREW_INSTALLER_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
ROOT_DIR=${ROOT_DIR:-..}

# Functions
## Install Homebrew formulae
install_formulae()
{
  if [ "$(uname -s)" = "Darwin" ]; then
    bash -c "cd ${ROOT_DIR}/brew && brew bundle --no-upgrade --no-lock"
  fi
}

## Install Homebrew
install_homebrew()
{
  if [ "$(uname -s)" = "Darwin" ]; then
    if ! command -v /opt/homebrew/bin/brew &> /dev/null; then
      NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL ${HOMEBREW_INSTALLER_URL})"
    fi
  fi
}

# Logic

install_homebrew
install_formulae