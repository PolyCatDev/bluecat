#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

cd /tmp

source ./modules/steam.sh
source ./modules/dev-tools.sh
