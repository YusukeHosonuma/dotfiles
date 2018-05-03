#!/bin/bash

DOT_FILES=( .gitconfig .gitignore .tigrc .vimrc .zshrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/.ghq/github.com/YusukeHosonuma/dotfiles/$file $HOME/$file
done
