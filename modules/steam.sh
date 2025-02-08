#!/bin/bash

echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

curl -o OpenTabletDriver.rpm https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/opentabletdriver-0.6.5.1-1.x86_64.rpm

rpm-ostree install\
    gamescope\
    mangohud\
    ./OpenTabletDriver.rpm

rm -f ./OpenTabletDriver.rpm

echo -e "\e[32m[End Steam Module]\e[0m"
