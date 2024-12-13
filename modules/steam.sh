#!/bin/bash

echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

rpm-ostree install\
    dotnet-runtime-8.0\
    steam\
    gamescope\
    mangohud
    
wget https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/OpenTabletDriver.rpm
rpm-ostree install --ignore-missing-dependencies OpenTabletDriver.rpm
rm -f ./OpenTabletDriver.rpm

echo -e "\e[32m[End Steam Module]\e[0m"
