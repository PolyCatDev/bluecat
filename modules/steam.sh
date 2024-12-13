#!/bin/bash

echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

rpm-ostree install --apply-live\
    dotnet-runtime-8.0

wget https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/OpenTabletDriver.rpm

rpm-ostree install\
    OpenTabletDriver.rpm\
    steam\
    gamescope\
    mangohud
    
rm -f ./OpenTabletDriver.rpm

echo -e "\e[32m[End Steam Module]\e[0m"
