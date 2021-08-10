#!/bin/bash

# OS Check
if [ "$(uname)" == 'Darwin' ]; then
  echo 'Start setup MacOS'
  # Check for Homebrew
  if test ! $(which brew); then
    echo 'Install Homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  
  fi

  brew tap homebrew/bundle
  brew bundle

  # TODO vim & zsh setting

  if [ "$(uname -m)" == 'arm64' ]; then
    echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
  fi

elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  RELEASE_FILE=/etc/os-release
elif grep '^NAME="Ubuntu' "${RELEASE_FILE}" >/dev/null; then
  echo 'Start setup UbuntuOS'
  # TODO support UbuntuOS
else
  echo "Your platform is not supported."
  uname -a
  exit 1
fi
