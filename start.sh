#!/bin/bash

#
# clone (via ghq)
#
ghq get https://github.com/YusukeHosonuma/dotfiles.git

#
# brew
#
# brew install zsh-syntax-highlighting
brew bundle

$HOME/.ghq/github.com/YusukeHosonuma/dotfiles/setup.sh
