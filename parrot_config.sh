#!/bin/bash

sudo apt update
sudo apt remove neovim
sudo apt install -y vim wget git curl htop neofetch cherrytree cmatrix tmux python3-pip dotdotpwn keepassxc plank exploitdb
git clone https://github.com/impulsivestrategist/dotfiles.git ~/Desktop

echo 'extracting rockyou.txt.gz'
gzip -d /usr/share/wordlists/rockyou.txt.gz

echo 'Moving config files to proper locations...'
mv ~/Desktop/dotfiles/.bash_profile ~/.bash_profile
mv ~/Desktop/dotfiles/.vimrc ~/.vimrc
mv ~/Desktop/dotfiles/config.conf ~/.config/neofetch/config.conf
mv ~/Desktop/dotfiles/nanorc ~/.config/nano/nanorc
mv ~/Desktop/dotfiles/htoprc ~/.config/htop/htoprc

mkdir ~/Pictures/ascii
mv ~/Desktop/dotfiles/cross ~/Pictures/ascii/cross

echo 'source bash_profile' > ~/.bashrc
source .bashrc
neofetch
