#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y
sudo apt install vim-gtk -y
sudo apt install tmux -y
sudo apt install terminator -y
sudo apt install xclip -y

# setting for tmux
cp ./tmux.conf ~/.tmux.conf

# setting for terminator
mkdir -p ~/.config/terminator
cp config_for_terminator ~/.config/terminator/config

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


# font
sudo mkdir -p /usr/share/fonts/truetype/Menlo
sudo cp Menlo-Regular.ttf /usr/share/fonts/truetype/Menlo/

sudo mkdir -p /usr/share/fonts/truetype/Monaco
sudo cp Monaco.ttf /usr/share/fonts/truetype/Monaco/
sudo fc-cache -fv


