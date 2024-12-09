#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

./modules/steam.sh
