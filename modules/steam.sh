#!/bin/bash

echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

rpm-ostree install --apply-live\
    dotnet-runtime-8.0\
    dotnet-sdk-8.0


mkdir /root/.dotnet
git clone https://github.com/OpenTabletDriver/OpenTabletDriver.git --branch 0.6.x
cd OpenTabletDriver
source ./eng/linux/package.sh --package RedHat --output ./dist/redhat

rpm-ostree install\
    ./dist/redhat/OpenTabletDriver.rpm\
    steam\
    gamescope\
    mangohud

cd ..
rm -rf ./OpenTabletDriver
rm -rf /root/.dotnet

echo -e "\e[32m[End Steam Module]\e[0m"
