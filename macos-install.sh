#!/bin/bash
brew install cmake python go nodejs
brew install java
sudo ln -sfn $(brew --prefix java)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install vim
brew install macvim
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
