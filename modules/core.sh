#!/bin/bash

echo -e "\e[38;5;214m[Start Core Module]\e[0m"

rpm-ostree override remove\
    ptyxis\
    nvtop\
    firefox\
    firefox-langpacks\
    gnome-shell-extension-background-logo

rpm-ostree install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm\
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm\
    loupe\
    celluloid\
    WoeUSB\
    stow

echo "#!/usr/bin/env bash" > /etc/profile.d/brew.sh
echo '[[ -d /home/linuxbrew/.linuxbrew && $- == *i* ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /etc/profile.d/brew.sh

echo -e "\e[32m[End Core Module]\e[0m"
