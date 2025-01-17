#!/bin/bash

echo -e "\e[38;5;214m[Start Core Module]\e[0m"

# Live Deploy Libs
rpm-ostree install nautilus-python python3-pip
rpm-ostree apply-live

# Remove Unwanted Packages
rpm-ostree override remove\
    ptyxis\
    nvtop\
    firefox\
    firefox-langpacks\
    gnome-shell-extension-background-logo

# Install Core Packages
rpm-ostree install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm\
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm\
    loupe\
    celluloid\
    WoeUSB\
    stow

# Install Hack Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz
tar -xf Hack.tar.xz
rm -f Hack.tar.xz
mkdir hack-nerd-font
mv HackNerdFont*.ttf hack-nerd-font
mv ./hack-nerd-font /usr/share/fonts/

# Setup homebrew launch option if installed
echo "#!/usr/bin/env bash" > /etc/profile.d/brew.sh
echo '[[ -d /home/linuxbrew/.linuxbrew && $- == *i* ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /etc/profile.d/brew.sh

echo -e "\e[32m[End Core Module]\e[0m"
