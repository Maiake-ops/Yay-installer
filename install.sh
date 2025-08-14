#!/bin/bash

# Update system
sudo pacman -Syu --noconfirm

# Install required base-devel and git
sudo pacman -S --needed base-devel git --noconfirm

# Clone yay from AUR
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay

# Build and install yay
makepkg -si --noconfirm

# Cleanup
cd ..
rm -rf yay

# Check yay version
yay --version