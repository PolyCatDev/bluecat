#!/bin/bash

echo -e "\e[38;5;214m[Start AKMods Module]\e[0m"

rpm-ostree install\
    v4l2loopback\
    kernel-devel\
    kernel-headers

echo -e "\e[32m[End AKMods Module]\e[0m"
