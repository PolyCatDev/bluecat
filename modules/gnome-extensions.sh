#!/bin/bash

echo -e "\e[38;5;214m[Start Gnome Extensions Module]\e[0m"

rpm-ostree install\
    gnome-shell-extension-caffeine\
    gnome-shell-extension-appindicator

echo -e "\e[32m[End Gnome Extensions Module]\e[0m"
