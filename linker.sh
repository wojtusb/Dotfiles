#!/bin/sh

rm ~/.zshrc
rm ~/.bashrc
rm ~/.p10k.zsh
rm ~/.gitconfig
rm ~/.gitkraken/config

ln -s ~/Dotfiles/.zshrc ~/.zshrc
ln -s ~/Dotfiles/.bashrc ~/.bashrc
ln -s ~/Dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/Dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Dotfiles/gitkraken_config ~/.gitkraken/config

