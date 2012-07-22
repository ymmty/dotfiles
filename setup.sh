#!/usr/local/bin/zsh

DOT_FILES=( .zshrc .vimrc .gitconfig .gitignore .dir_colors )

for file in ${DOT_FILES[*]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
