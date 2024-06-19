#!/bin/sh

sudo apt update

# CLI
sudo apt -y install bat
sudo apt -y install btop
sudo apt -y install zsh | sudo chsh -s /bin/zsh
sudo apt -y install fzf
sudo apt -y install rsync
sudo apt -y install exa
sudo apt -y install fastfetch
sudo apt -y install tldr
sudo apt -y install nmap
sudo apt -y install ssh
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# Z Shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
source ~/.zshrc

# work
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo apt -y install ./gitkraken-amd64.deb
rm gitkraken-amd64.deb

sudo apt -y install forticlient
sudo apt -y install octave
sudo apt -y install remmina

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo tee /etc/apt/trusted.gpg.d/sublimehq-pub.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt -y install apt-transport-https
sudo apt -y install sublime-text

# personal
sudo apt -y install syncthing
sudo apt -y install audacity

sudo apt -y install snapd
sudo snap install drawio

sudo apt -y install gimp
sudo apt -y install inkscape
sudo apt -y install meld
sudo apt -y install gnome-disk-utility
sudo apt -y install filelight
sudo apt -y install kdenlive
sudo apt -y install vlc
sudo apt -y install libreoffice

curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt -y install spotify-client

sudo apt -y install android-sdk-platform-tools
sudo apt -y install adb

sudo apt -y install flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak -y install flathub md.obsidian.Obsidian

# Firefox tab bar hidden
firefoxDir="/home/wojtek/.mozilla/firefox/*default-esr/chrome/"
mkdir ${firefoxDir}
touch ${fireforDir}/userChrome.css
echo "#TabsToolbar" >> ${firefoxDir}/userChrome.css
echo "{" >> ${firefoxDir}/userChrome.css
echo "visibility: collapse;" >> ${firefoxDir}/userChrome.css
echo "}" >> ${firefoxDir}/userChrome.css

sed -n '/legacyUserProfileCustomizations.stylesheets/p' /home/wojtek/.mozilla/firefox/*default-esr/prefs.js | sed 's/false/true'
