#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y
sudo apt install vim -y
sudo apt install tmux -y

# setting for tmux
cp ./tmux.conf ~/.tmux.conf

# setting for vim
sudo apt install curl
mkdir -p ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
mv jellybeans.vim ~/.vim/colors
cp vimrc ~/.vimrc

# install zsh + omz
sudo apt install zsh -y
chsh -s `which zsh`
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"




