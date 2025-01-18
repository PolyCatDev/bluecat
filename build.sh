#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

cd /tmp

source ./modules/core.sh
#source ./modules/akmods.sh
source ./modules/gnome-extensions.sh
source ./modules/dev-tools.sh
source ./modules/steam.sh

cd ..
