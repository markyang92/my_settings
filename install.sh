#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y
sudo apt install vim-gtk -y
sudo apt install tmux -y
sudo apt install terminator -y
sudo apt install xclip -y
sudo apt install tig -y

# setting for tmux
cp ./tmux.conf ~/.tmux.conf

# setting for gitconfig
cp ./gitconfig ~/.gitconfig

# setting for tigrc
cp ./tigrc ~/.tigrc

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

git clone https://github.com/markyang92/monego.git

mkdir -p https://github.com/markyang92/monego.git
sudo cp -r monego/Monego /usr/share/fonts/truetype/Monego
mkdir -p https://github.com/markyang92/monego.git
sudo cp -r monego/Monego-Nerd-Font /usr/share/fonts/truetype/Monego-Nerd-Font
mkdir -p https://github.com/markyang92/monego.git
sudo cp -r monego/Monego-with-ligatures /usr/share/fonts/truetype/Monego-with-ligatures

sudo fc-cache -fv

cat zshrc_append >> ~/.zshrc