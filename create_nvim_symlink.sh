#!/bin/sh

NVIM_CONFIG_HOME = "${HOME}/.config"
mkdir -p ${NVIM_CONFIG_HOME}
ln -s ~/.vim $NVIM_CONFIG_HOME/.config/nvim
ln -s ~/.vimrc $NVIM_CONFIG_HOME/nvim/init.vim
