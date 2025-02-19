#!/bin/bash

echo -e "\e[38;5;214m[Start AKMods Module]\e[0m"

# Install required packages
dnf install -y \
    akmods-nvidia \
    kernel-modules-extra \
    && dnf clean all

# Download and copy the signing key
curl -s -o /tmp/akmods-ublue.der \
    https://github.com/ublue-os/akmods/raw/main/certs/public_key.der
mkdir -p /etc/pki/akmods/certs/
cp /tmp/akmods-ublue.der /etc/pki/akmods/certs/

# Configure module to load at boot
mkdir -p /etc/modules-load.d/
echo v4l2loopback > /etc/modules-load.d/v4l2loopback.conf

# Set up module signing for Secure Boot
mokutil --import /etc/pki/akmods/certs/akmods-ublue.der

echo -e "\e[32m[End AKMods Module]\e[0m"
