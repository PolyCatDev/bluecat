#!/bin/bash

echo -e "\e[38;5;214m[Start Media Module]\e[0m"

curl -L https://copr.fedorainfracloud.org/coprs/rockowitz/ddcutil/repo/fedora-41/rockowitz-ddcutil-fedora-41.repo > /etc/yum.repos.d/ddcutil.repo

#curl -L -o get-otd-link.gz https://github.com/PolyCatDev/bluecat/raw/refs/heads/main/scripts/get-otd-link/get-otd-link.gz
#gunzip get-otd-link.gz
#chmod +x get-otd-link
#curl -L -o otd.rpm $(./get-otd-link)
#rm -f ./get-otd-link

rpm-ostree install\
    gamescope\
    mangohud\
    ddcui

#rm -f ./otd.rpm

echo -e "\e[32m[End Media Module]\e[0m"
