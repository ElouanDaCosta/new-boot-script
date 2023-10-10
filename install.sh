#!/bin/bash

# Install Homebrew if not installed
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
brew update

if test ! $(which pip); then
    brew install python
fi

if test ! $(which npm); then
    brew install npm
fi

# List of apps to install with brew
apps=(
    git
    node
    python3
    ruby
    php
    composer
    mysql
    postgresql
    docker
)

# Installs apps
brew install ${apps[@]}

# List of apps to install with brew cask
cask_apps=(
    postman
    visual-studio-code
    iterm2
    google-chrome
    firefox
)

# Installs apps
brew install --cask ${cask_apps[@]}

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installation terminée"
