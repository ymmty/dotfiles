#!/bin/bash

DOT_FILES=(
.vimrc
.gitconfig
.gitignore 
.tmux.conf 
.dir_colors
)

if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

for file in ${DOT_FILES[*]}
do
  ln -fs `pwd`/$file $HOME/$file
done
