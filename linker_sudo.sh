#!/bin/bash

servicesArray=("/usr/local/bin/obsidian_backup.sh"
 "/usr/local/bin/start_syncthing.sh"
 "/etc/systemd/system/obsidian_sync.service"
 "/etc/systemd/system/obsidian_sync.timer"
 "/etc/systemd/system/syncthing.service")

dotfilesArray=("/home/wojtek/Dotfiles/.obsidian_backup.sh"
"/home/wojtek/Dotfiles/.start_syncthing.sh"
"/home/wojtek/Dotfiles/.obsidian_sync.service"
"/home/wojtek/Dotfiles/.obsidian_sync.timer"
"/home/wojtek/Dotfiles/.syncthing.service")

for i in "${!configsArray[@]}"; do
	sudo ln -s "${dotfilesArray[i]}" "${configsArray[i]}"
done

sudo cp system-connections.tar.gz /etc/NetworkManager
sudo chown root:root system-connections.tar.gz
sudo mv system-connections system-connections_backup
sudo tar -xzvf system-connections.tar.gz 
sudo chmod 700 system-connections



