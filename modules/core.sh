#!/bin/bash

echo -e "\e[38;5;214m[Start Core Module]\e[0m"

rpm-ostree override remove\
    ptyxis\
    nvtop\
    firefox\
    firefox-langpacks\
    gnome-shell-extension-background-logo

rpm-ostree install \
    loupe\
    celluloid\
    WoeUSB\
    stow

echo "#!/usr/bin/env bash" > /etc/profile.d/brew.sh
echo '[[ -d /home/linuxbrew/.linuxbrew && $- == *i* ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /etc/profile.d/brew.sh

echo -e "\e[32m[End Core Module]\e[0m"
