#!/bin/bash


echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

rpm-ostree install\
    steam\
    gamescope\
    mangohud

echo -e "\e[32m[End Steam Module]\e[0m"
