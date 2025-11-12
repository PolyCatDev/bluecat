# BlueCat &nbsp; [![bluebuild build badge](https://github.com/PolyCatDev/bluecat/actions/workflows/build.yml/badge.svg)](https://github.com/PolyCatDev/bluecat/actions/workflows/build.yml)

An opinionated tweaked [ublue](https://universal-blue.org/) image based on [silverblue-main](https://github.com/ublue-os/main/pkgs/container/silverblue-main).

## What is this?

This is my own tweaked image deployment that I maintain for myself. It's mainly focused on graphics, programming and gaming workloads.

If anyone is using these images please reach out with a bug report so that I don't randomly change things on your computer.

> [!TIP]
> If you are confused about wat BlueCat is, consider checking out the [wiki](https://github.com/PolyCatDev/bluecat/wiki/). It might help point you in the right direction.

## Changes and Features

### Tweaks

- All the uBlue backend goodies
- Firefox removed (install web browser from software centre or cli)
- Hack [Nerd Font](https://www.nerdfonts.com/) included
- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/), [Appindicator Support](https://extensions.gnome.org/extension/615/appindicator-support/) and [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/) extensions included
- v4l2loopback kernel module for obs virtual webcam

### Included apps and tools
- [Loupe](https://apps.gnome.org/Loupe/)
- [Celluloid](https://celluloid-player.github.io/)
- [Gamescope](https://github.com/ValveSoftware/gamescope)
- [Mangohud](https://github.com/flightlessmango/MangoHud)
- [Ghostty](https://ghostty.org/)
- [NeoVim](https://neovim.io/)
- [VSCodium](https://vscodium.com/) thanks to [Pavlo Rudy](https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/)
- [Git LFS](https://git-lfs.com/)
- [btop](https://github.com/aristocratos/btop)
- [sshfs](https://github.com/libfuse/sshfs)
- [Podman](https://podman.io/) and [Docker](https://www.docker.com/)
- [Android Tools (adb, fastboot)](https://developer.android.com/tools/releases/platform-tools)
- [Mission Center](https://missioncenter.io/)
- [Extension Manager](https://mattjakeman.com/apps/extension-manager)
- [Flatseal](https://github.com/tchx84/flatseal)
- [Gnome Calendar](https://apps.gnome.org/Calendar/)
- [Gnome Papers](https://apps.gnome.org/Papers/)
- [Gear Lever](https://mijorus.it/projects/gearlever/)

## How to use

The intended way to use this image is to use [Flatpak](https://flatpak.org/) for graphical apps and [Homebrew](https://brew.sh/) for cli tools

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
  
## Special Thanks
- [asen23](https://github.com/asen23) - They helped a lot with the akmods installation setup
