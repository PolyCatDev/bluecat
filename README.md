# BlueCat

An opinionated tweaked [ublue](https://universal-blue.org/) image based on [silverblue-main](https://github.com/ublue-os/main/pkgs/container/silverblue-main).

## What is this?

This is my own tweaked image deployment that I maintain for myself. It's mainly focused on graphics, programming and gaming workloads.

If anyone is using these images please reach out with a bug report so that I don't randomly change things on your computer.


## Changes and Features

### Tweaks

- All the uBlue backend goodies
- Firefox removed (install web browser from software centre or cli)
- Hack [Nerd Font](https://www.nerdfonts.com/) included
- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) and [Appindicator Support](https://extensions.gnome.org/extension/615/appindicator-support/) extensions included
- v4l2loopback kernel module for obs virtual webcam

### Included apps
- [Loupe](https://apps.gnome.org/Loupe/)
- [Celluloid](https://celluloid-player.github.io/)
- [Gamescope](https://github.com/ValveSoftware/gamescope)
- [Mangohud](https://github.com/flightlessmango/MangoHud)
- [Ghostty](https://ghostty.org/)
- [Android Tools (adb, fastboot)](https://developer.android.com/tools/releases/platform-tools)
- [VSCodium](https://vscodium.com/) thanks to [Pavlo Rudy](https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/)
- [Podman](https://podman.io/) and [Docker](https://www.docker.com/)
- [Open Tablet Driver](https://opentabletdriver.net/) (temporarily disabled)
- [WoeUSB](https://github.com/WoeUSB/WoeUSB) for creating Windows install drives

## How to use

The intended way to use this image is to use [Flatpak](https://flatpak.org/) for most apps and [Homebrew](https://brew.sh/) for cli tools

## Installation

1. You first need a [Fedora Atomic Desktop](https://fedoraproject.org/atomic-desktops/) installed.
2. Then you rebase with these commands

> [!TIP]
> To install the Nvidia image just rename `bluecat:latest` to `bluecat-nvidia:latest`

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/polycatdev/bluecat:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/polycatdev/bluecat:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```
  
