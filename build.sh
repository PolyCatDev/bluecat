#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

cd /tmp

source ./modules/steam.sh
