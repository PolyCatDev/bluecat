#!/bin/bash

echo -e "\e[38;5;214m[Start Dev-Tools Module]\e[0m"

curl -fsSL https://download.docker.com/linux/fedora/docker-ce.repo > /etc/yum.repos.d/docker-ce.repo

curl -fsSL https://copr.fedorainfracloud.org/coprs/pgdev/ghostty/repo/fedora-41/pgdev-ghostty-fedora-41.repo > /etc/yum.repos.d/ghostty.repo

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
    android-tools\
    ghostty

systemctl enable docker.service

rpm-ostree apply-live nautilus-python python3-pip
pip install nautilus-open-any-terminal


echo -e "\e[32m[End Dev-Tools Module]\e[0m"
