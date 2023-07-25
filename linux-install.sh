#!/bin/bash

sudo apt install nvim
NVIM_CONFIG_HOME = "${HOME}/.config"
mkdir -p ${NVIM_CONFIG_HOME}
ln -s ~/.vim $NVIM_CONFIG_HOME/.config/nvim
ln -s ~/.vimrc $NVIM_CONFIG_HOME/nvim/init.vim

sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
