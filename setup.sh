#!/bin/bash

DOT_FILES=( .gitconfig .gitignore .pryrc .tigrc .vimrc .zshrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/go/src/github.com/YusukeHosonuma/dotfiles/$file $HOME/$file
done
