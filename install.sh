#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y
sudo apt install vim-gtk -y
sudo apt install tmux -y
sudo apt install tig -y
sudo apt install terminator -y
sudo apt install xclip -y

# setting for tmux
cp ./tmux.conf ~/.tmux.conf

# setting for gitconfig
cp ./gitconfig ~/.gitconfig


# setting for terminator
mkdir -p ~/.config/terminator
cp config_for_terminator ~/.config/terminator/config

# setting for vim
sudo apt install curl
mkdir -p ~/.vim/colors
curl -sL https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim -o ~/.vim/colors/jellybeans.vim
cp vimrc ~/.vimrc

# ======== install fonts  ======== #
sudo mkdir -p /usr/share/fonts/truetype/Menlo
sudo cp Menlo-Regular.ttf /usr/share/fonts/truetype/Menlo/

git clone https://github.com/markyang92/monego.git

sudo mkdir -p /usr/share/fonts/truetype/Monego
sudo cp -r ./monego/Monego /usr/share/fonts/truetype/Monego

sudo mkdir -p /usr/share/fonts/truetype/Monego-Nerd-Font
sudo cp -r monego/Monego-Nerd-Font /usr/share/fonts/truetype/Monego-Nerd-Font

sudo mkdir -p /usr/share/fonts/truetype/Monego-with-ligatures
sudo cp -r monego/Monego-with-ligatures /usr/share/fonts/truetype/Monego-with-ligatures

sleep 1

sudo fc-cache -fv | bash

# ======== install zsh + omz  ======== #
sudo apt install zsh -y
chsh -s `which zsh`
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cat zshrc_append >> ~/.zshrc

# ======== install pyenv  ======== #
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev libssl-dev
curl https://pyenv.run | bash

# ======== install diskus  ======== #
curl -sL https://github.com/sharkdp/diskus/releases/download/v0.7.0/diskus_0.7.0_amd64.deb -o ~/diskus_0.7.0_amd64.deb && cd ~ && sudo dpkg -i ./diskus_0.7.0_amd64.deb                                                          
# ======== install GNU/parallel  ======== #
curl -sL https://ftpmirror.gnu.org/parallel/parallel-latest.tar.bz2 -o ~/parallel.tar.bz2 && cd ~ && tar -jxvf ./parallel.tar.bz2 -C ./ && cd ./parallel-[0-9]* && ./configure && make && sudo make install && cd ~ && rm -rf ./parallel-[0-9]*

# setting for tigrc
cd ~ && git clone https://gist.github.com/f9f3ffb83221ed2dbeef67d11f9ff189.git tigrc && cp ./tigrc/.tigrc ~/
