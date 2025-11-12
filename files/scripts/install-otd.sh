#/bin/bash

set -euo pipefail

# Get latest OTD rpm
curl -L -o get-otd-link.gz https://github.com/PolyCatDev/bluecat/raw/refs/heads/live/files/storage/get-otd-link/get-otd-link.gz
gunzip ./get-otd-link.gz
chmod +x ./get-otd-link
curl -L -o otd.rpm $(./get-otd-link)

# Install OTD rpm
dnf5 install -y ./otd.rpm
dracut --regenerate-all --force

# Cleanup
rm -f ./get-otd-link ./otd.rpm
