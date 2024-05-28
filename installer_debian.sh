#!/bin/sh

sudo apt update

# CLI
sudo apt -y install bat
sudo apt -y install btop
sudo apt -y install zsh
sudo apt -y install fzf
sudo apt -y install rsync
sudo apt -y install exa

# work
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo apt -y install ./gitkraken-amd64.deb
sudo apt -y install forticlient
sudo apt -y install octave
sudo apt -y install remmina
sudo apt -y install sublime-text

# personal
sudo apt -y install audacity
sudo apt -y install drawio
sudo apt -y install gimp
sudo apt -y install inkscape
sudo apt -y install meld
sudo apt -y install gnome-disk-utility
sudo apt -y install filelight
sudo apt -y install kdenlive
sudo apt -y install vlc
sudo apt -y install libreoffice
sudo apt -y install spotify-client
flatpak install flathub md.obsidian.Obsidian

