#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

cd /tmp

./modules/steam.sh
