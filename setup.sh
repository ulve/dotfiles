#!/bin/bash

# git
git config --global user.email "johansson.olov@gmail.com"
git config --global user.name "Olov Johansson"

# vim
ln -sf `pwd`/vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# bash
pushd ~
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt
mkdir -p ~/.bash_files
popd
ln -sf `pwd`/bash/bashrc ~/.bashrc
ln -sf `pwd`/bash/aliases ~/.bash_files/aliases
