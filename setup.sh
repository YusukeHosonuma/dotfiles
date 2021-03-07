#!/bin/bash

DOT_FILES=( .gitconfig .ghci .gitignore .pryrc .tigrc .vimrc .zshrc)

for file in ${DOT_FILES[@]}
do
    rm -f $HOME/$file
    ln -s $(ghq root)/github.com/YusukeHosonuma/dotfiles/$file $HOME/$file
done

CONFIG_FILES=( starship.toml)

mkdir -p $HOME/.config
for file in ${CONFIG_FILES[@]}
do
    rm -f $HOME/.config/$file
    ln -s $(ghq root)/github.com/YusukeHosonuma/dotfiles/.config/$file $HOME/.config/$file
done
