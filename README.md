# BlueCat &nbsp; [![build-ublue](https://github.com/PolyCatDev/bluecat/actions/workflows/build.yml/badge.svg)](https://github.com/PolyCatDev/bluecat/actions)

An opinionated tweaked [ublue](https://universal-blue.org/) image based on [silverblue-main](https://github.com/ublue-os/main/pkgs/container/silverblue-main).

## What is this?

This is my own tweaked image deployment that I maintain for myself.

If anyone is using these images please reach out with a bug report so that I don't randomly change things on your computer.


## Changes and Features

### Tweaks

- All the uBlue backend goodies
- Firefox removed (install web browser from software centre or cli)
- FiraCode and Hack Nerd fonts included
- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) and [Appindicator Support](https://extensions.gnome.org/extension/615/appindicator-support/) extensions included
- v4l2loopback kernel module for obs virtual webcam

### Included apps
- [Loupe](https://flathub.org/apps/org.gnome.Loupe)
- [Celluloid](https://flathub.org/apps/io.github.celluloid_player.Celluloid)
- [Calendar](https://flathub.org/apps/org.gnome.Calendar)
- [ExtensionManager](https://flathub.org/apps/com.mattjakeman.ExtensionManager)
- [Flatseal](https://flathub.org/apps/com.github.tchx84.Flatseal)
- [Gearlever](https://flathub.org/apps/it.mijorus.gearlever)
- [Steam Flatpak](https://flathub.org/apps/com.valvesoftware.Steam)
- [VSCodium](https://vscodium.com/) thanks to [qoijjj](https://copr.fedorainfracloud.org/coprs/qoijjj/vscodium/)
- [Podman](https://podman.io/) and [Docker](https://www.docker.com/)
- [Open Tablet Driver](https://opentabletdriver.net/)
- [WoeUSB](https://github.com/WoeUSB/WoeUSB) for creating Windows install drives
- python3-tkinter and python3-wxpython4 just in case

## How to use

The intended way to use this image is to use [Flatpak](https://www.flatpak.org/) for most apps and [Homebrew](https://brew.sh/) for cli tools

## Installation

Instructions can be found in the [wiki](https://github.com/PolyCatDev/bluecat/wiki/BlueCat-Installation-Instructions).

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.
