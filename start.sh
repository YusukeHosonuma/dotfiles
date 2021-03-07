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

#
# Install powerline
#
pip3 install powerline-status
git clone https://github.com/powerline/fonts
./fonts/install.sh
rm -rf ./fonts

#
# Install Oh-my-zsh plugins
#
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k