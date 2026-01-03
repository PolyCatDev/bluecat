#!/bin/bash

set -euo pipefail

sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/_copr_ublue-os-akmods.repo
find /tmp/rpms
rpm-ostree install /tmp/rpms/kmods/kmod-v4l2loopback*.rpm
