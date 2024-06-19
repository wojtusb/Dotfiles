#!/bin/bash

configsArray=("/home/wojtek/.zshrc"			#1
"/home/wojtek/.bashrc"					#2
"/home/wojtek/.p10k.zsh"				#3
"/home/wojtek/.gitconfig"				#4
"/home/wojtek/.gitkraken/config"			#5
"/home/wojtek/.config/remmina/remmina.pref"		#6
"/home/wojtek/.local/share/konsole/konsolestaterc"	#7
"/home/wojtek/.local/share/konsole/wojtek.profile"	#8
"/home/wojtek/.config/obsidian/obsidian.json"		#9
"/home/wojtek/.config/spotify/prefs"			#10
"/home/wojtek/.config/audacity/audacity.cfg"		#11
"/home/wojtek/.config/fastfetch/config.jsonc"		#12
"/home/wojtek/.config/syncthing/config.xml"		#13
"/home/wojtek/.config/vlc/vlcrc")			#14

dotfilesArray=("/home/wojtek/Dotfiles/.zshrc"
"/home/wojtek/Dotfiles/.bashrc"
"/home/wojtek/Dotfiles/.p10k.zsh"
"/home/wojtek/Dotfiles/.gitconfig"
"/home/wojtek/Dotfiles/.config_gitkraken"
"/home/wojtek/Dotfiles/.config_remmina"
"/home/wojtek/Dotfiles/.config_konsole"
"/home/wojtek/Dotfiles/.profile_konsole"
"/home/wojtek/Dotfiles/.config_obsidian.json"
"/home/wojtek/Dotfiles/.config_spotify"
"/home/wojtek/Dotfiles/.config_audaticy"
"/home/wojtek/Dotfiles/.config_fastfetch"
"/home/wojtek/Dotfiles/.config_syncthing"
"/home/wojtek/Dotfiles/.config_vlc")

exclude=(3 4)

for i in "${!configsArray[@]}"; do
	if [[ ${exclude[@]} =~ $i ]] then
		:
	else
		rm "${configsArray[i]}"
		ln -s "${dotfilesArray[i]}" "${configsArray[i]}"
	fi
done



