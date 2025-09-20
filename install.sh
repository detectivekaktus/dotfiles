#!/usr/bin/env bash
# Installs all essential packages for working with Arch linux, considering
# my personal setup.
# Before running this script enable `multilib` repository for pacman
# at /etc/pacman.conf

set -e

compute_package_string() {
  str=""
  for package in "$@"
  do
    str="${str} ${package}"
  done

  echo $str
}

pacman_packages=(
  # Command line interface
  "alacritty" "htop" "fastfetch"

  # Development tools
  "go" "nodejs" "npm" "python" "openssh"

  # Graphics
  "mesa" "lib32-mesa" "vulkan-intel" "lib32-vulkan-intel" "vulkan-tools"

  # Fonts
  "ttf-iosevka-nerd" "noto-fonts" "noto-fonts-emoji"

  # Other
  "flatpak" "steam" "firefox" "discord" "spotify-launcher"
)

package_string=$(compute_package_string "${pacman_packages[@]}")
sudo pacman -S $package_string

mkdir -p $HOME/source
cd $HOME/source
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay_packages=(
  # Development tools
  "visual-studio-code-bin"

  # Other
  "google-chrome"
)

package_string=$(compute_package_string "${yay_packages[@]}")
yay -S $package_string