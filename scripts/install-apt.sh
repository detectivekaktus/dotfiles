#!/usr/bin/env bash
set -x

# Essential tools for creating software applications.
apt install build-essential git python3 python3-pip python3.12-venv golang nodejs npm

# Utilities
apt install htop xxd

# Add repository with fastfetch.
add-apt-repository ppa:zhangsongcui3371/fastfetch
apt install fastfetch

cp -r "$HOME"/dotfiles/nvim "$HOME"/.config/
cp -r "$HOME"/dotfiles/fastfetch "$HOME"/.config/
