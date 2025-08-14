#!/bin/bash

# Update system (needs root)
sudo pacman -Syu --noconfirm

# Install required packages for building AUR packages
sudo pacman -S --needed base-devel git --noconfirm

# Switch to normal user directory (do NOT run as root)
cd "$HOME"

# Clone yay from AUR
git clone https://aur.archlinux.org/yay.git
cd yay

# Build and install yay as normal user
makepkg -si --noconfirm

# Cleanup
cd "$HOME"
rm -rf yay

# Confirm yay installed
yay --version