#!/bin/sh

sudo pacman -Sy

# CLI
sudo pacman -S --noconfirm bat
sudo pacman -S --noconfirm btop
sudo pacman -S --noconfirm zsh | sudo chsh -s /bin/zsh
sudo pacman -S --noconfirm fzf
sudo pacman -S --noconfirm rsync
sudo pacman -S --noconfirm exa
sudo pacman -S --noconfirm fastfetch
sudo pacman -S --noconfirm tldr
sudo pacman -S --noconfirm nmap
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# Z Shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
source ~/.zshrc

# work
yay -SYg gitkraken
yay -SYg forticlient-vpn
sudo pacman -S --noconfirm octave
sudo pacman -S --noconfirm remmina
sudo pacman -S --noconfitm sublime-text

# personal
sudo pacman -S --noconfirm syncthing
sudo pacman -S --noconfirm audacity
yay -SYg drawio-desktop
sudo pacman -S --noconfirm gimp
sudo pacman -S --noconfirm inkscape
sudo pacman -S --noconfirm meld
sudo pacman -S --noconfirm gnome-disk-utility
sudo pacman -S --noconfirm filelight
sudo pacman -S --noconfirm kdenlive
sudo pacman -S --noconfirm vlc
sudo pacman -S --noconfirm libreoffice
yay -SYg spotify-client
sudo pacman -S --noconfirm obsidian

