#!/bin/bash


echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

wget https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/OpenTabletDriver.rpm
rpm-ostree install\
    ./OpenTabletDriver.rpm\
    dotnet-runtime-8.0

rm -f ./OpenTabletDriver.rpm

rpm-ostree install\
    steam\
    gamescope\
    mangohud


echo -e "\e[32m[End Steam Module]\e[0m"
