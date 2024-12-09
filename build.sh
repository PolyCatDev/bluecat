#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

cd /tmp

source ./modules/cleaner.sh
source ./modules/dev-tools.sh
source ./modules/steam.sh
