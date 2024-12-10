#!/bin/bash


echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

curl -o otd.rpm https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/OpenTabletDriver.rpm

rpm-ostree install\
    ./otd.rpm\
    steam\
    gamescope\
    mangohud

rm -f ./otd.rpm

echo -e "\e[32m[End Steam Module]\e[0m"
