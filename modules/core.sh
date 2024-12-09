#!/bin/bash

echo -e "\e[38;5;214m[Start Core Module]\e[0m"

rpm-ostree override remove\
    ptyxis\
    nvtop\
    firefox\
    firefox-langpacks\
    gnome-shell-extension-background-logo

echo -e "\e[32m[End Core Module]\e[0m"
