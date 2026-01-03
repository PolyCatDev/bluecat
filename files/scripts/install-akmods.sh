#!/bin/bash

set -euo pipefail

sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/_copr_ublue-os-akmods.repo
find /tmp/rpms
dnf5 install -y /tmp/rpms/kmods/kmod-v4l2loopback*.rpm
