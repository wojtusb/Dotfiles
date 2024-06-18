#!/bin/sh

configsArray=(\
"~/.zshrc",\					#01
"~/.bashrc",\					#02
"~/.p10k.zsh",\					#03
"~/.gitconfig",\				#04
"~/.gitkraken/config",\				#05
"~/.config/remmina/remmina.pref",\		#06
"~/.local/share/konsole/konsolestaterc",\	#07
"~/.local/share/konsole/wojtek.profile",\	#08
"~/.config/obsidian/obsidian.json",\		#09
"/usr/local/bin/obsidian_backup.sh",\		#10
"/usr/local/bin/start_syncthing.sh",\		#11
"/etc/systemd/system/obsidian_sync.service",\	#12
"/etc/systemd/system/obsidian_sync.timer",\	#13
"/etc/systemd/system/syncthing.service",\	#14
"~/.config/spotify/prefs",\			#15
"~/.config/audacity/audacity.cfg",\		#16
"~/.config/fastfetch/config.jsonc",\		#17
"~/.config/syncthing/config.xml",\		#18
"~/.config/vlc/vlcrc")				#19

dotfilesArray=(\
"~/Dotfiles/.zshrc",\
"~/Dotfiles/.bashrc",\
"~/Dotfiles/.p10k.zsh",\
"~/Dotfiles/.gitconfig",\
"~/Dotfiles/.config_gitkraken",\
"~/Dotfiles/.config_remmina",\
"~/Dotfiles/.config_konsole",\
"~/Dotfiles/.profile_konsole",\
"~/Dotfiles/.config_obsidian.json",\
"~/Dotfiles/.obsidian_backup.sh",\
"~/Dotfiles/.start_syncthing.sh",\
"~/Dotfiles/.obsidian_sync.service",\
"~/Dotfiles/.obsidian_sync.timer",\
"~/Dotfiles/.syncthing.service",\
"~/Dotfiles/.config_spotify",\
"~/Dotfiles/.config_audaticy",\
"~/Dotfiles/.config_fastfetch",\
"~/Dotfiles/.config_syncthing",\
"~/Dotfiles/.config_vlc")

exclude=(2 3)

for i in "${!configsArray[@]}"; do
	if [[ ${exclude[@]} =~ $i ]] then
		rm ${configsArray[i]}
		ln -s ${dotfilesArray[i]} ${configsArray[i]}
	fi
done

sudo mv system-connections.tar.gz /etc/NetworkManager
sudo chown root:root system-connections.tar.gz
sudo mv system-connections system-connections_backup
sudo tar -xzvf system-connections.tar.gz 
sudo chmod 700 system-connections



