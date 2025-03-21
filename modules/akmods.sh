#!/bin/bash

echo -e "\e[38;5;214m[Start AKMods Module]\e[0m"

rpm-ostree install /tmp/rpms/kmods/kmod-v4l2loopback*.rpm

echo -e "\e[32m[End AKMods Module]\e[0m"
