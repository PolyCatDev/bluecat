#!/bin/bash

echo -e "\e[38;5;214m[Start Dev-Tools Module]\e[0m"

curl -fsSL https://download.docker.com/linux/fedora/docker-ce.repo > /etc/yum.repos.d/docker-ce.repo

tee -a /etc/yum.repos.d/vscodium.repo << 'EOF'
[gitlab.com_paulcarroty_vscodium_repo]
name=gitlab.com_paulcarroty_vscodium_repo
baseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
metadata_expire=1h
EOF

rpm-ostree install\
    docker-ce\
    docker-ce-cli\
    containerd.io\
    docker-buildx-plugin\
    docker-compose-plugin\
    codium\
    gnome-terminal\
    gnome-terminal-nautilus\

systemctl enable docker.service

echo -e "\e[32m[End Dev-Tools Module]\e[0m"
