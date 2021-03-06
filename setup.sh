#!/bin/bash

# git
git config --global user.email "johansson.olov@gmail.com"
git config --global user.name "Olov Johansson"
git config --global credential.helper "cache --timeout 43200"

# vim
ln -sf `pwd`/vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# bash
mkdir -p ~/.bash_files
ln -sf `pwd`/bash/bashrc ~/.bashrc
ln -sf `pwd`/bash/aliases ~/.bash_files/aliases


# zsh
