#!/bin/bash

echo -e "\e[38;5;214m[Start Steam Module]\e[0m"

#rpm-ostree install --apply-live\
#    dotnet-runtime-8.0\
#    dotnet-sdk-8.0 \
#    libevdev \
#    gtk3


#export DOTNET_ROOT="/tmp/.dotnet"
#mkdir -p "$DOTNET_ROOT"
#export PATH="$DOTNET_ROOT:$PATH"

#git clone https://github.com/OpenTabletDriver/OpenTabletDriver.git --branch 0.6.x
#cd OpenTabletDriver
#source ./eng/linux/package.sh --package RedHat --output ./dist/redhat
#    ./dist/redhat/OpenTabletDriver.rpm\

rpm-ostree install\
    steam\
    gamescope\
    mangohud

#cd ..
#rm -rf ./OpenTabletDriver

echo -e "\e[32m[End Steam Module]\e[0m"
