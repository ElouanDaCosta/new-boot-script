#!/bin/bash

# Vérifie si Homebrew est installé, sinon l'installe
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Met à jour Homebrew
brew update

# Liste des applications à installer avec Brew
apps=(
    git
    node
    python3
    ruby
    php
)

# Installe les applications
brew install ${apps[@]}

# Liste des applications à installer avec Brew Cask
cask_apps=(
    postman
)

# Installe les applications
brew install --cask ${cask_apps[@]}

# Installe oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installation terminée"
