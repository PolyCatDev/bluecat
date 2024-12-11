#!/bin/bash

echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

#wget https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/OpenTabletDriver.rpm
#   ./OpenTabletDriver.rpm\

rpm-ostree install\
    steam\
    gamescope\
    mangohud
    
#rm -f ./OpenTabletDriver.rpm

echo -e "\e[32m[End Steam Module]\e[0m"
