# BlueCat &nbsp; [![bluebuild build badge](https://github.com/PolyCatDev/bluecat/actions/workflows/build.yml/badge.svg)](https://github.com/PolyCatDev/bluecat/actions/workflows/build.yml)

An opinionated tweaked [ublue](https://universal-blue.org/) image based on [silverblue-main](https://github.com/ublue-os/main/pkgs/container/silverblue-main).

## What is this?

This is my own tweaked image deployment that I maintain for myself. It's mainly focused on 3D graphics, programming and gaming workloads.

If anyone is using these images please reach out with a bug report so I don't randomly change things on your computer.

> [!TIP]
> If you are confused about wat BlueCat is, consider checking out the [wiki](https://github.com/PolyCatDev/bluecat/wiki/). It might help point you in the right direction.

## Changes and Features

### Tweaks

- Pre-installed Nvidia proprietary drivers
- Firefox removed (install web browser from software centre or cli)
- Hack [Nerd Font](https://www.nerdfonts.com/) included
- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/), [Appindicator Support](https://extensions.gnome.org/extension/615/appindicator-support/) and [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/) extensions included
- v4l2loopback kernel module for obs virtual webcam

### Included apps and tools

#### General Tools

- [Loupe](https://apps.gnome.org/Loupe/) - Image Viewer
- [Celluloid](https://celluloid-player.github.io/) - Media Player
- [Gnome Papers](https://apps.gnome.org/Papers/) - Document Wiever
- [Gnome Calendar](https://apps.gnome.org/Calendar/) - Calendar App
- [Mission Center](https://missioncenter.io/) - Task Manager for Linux
- [btop](https://github.com/aristocratos/btop) - Task Manager in the Terminal 
- [Extension Manager](https://mattjakeman.com/apps/extension-manager) - Gnome Extensions Manager
- [Flatseal](https://github.com/tchx84/flatseal) - Flatpak Permissions Manager
- [Gear Lever](https://mijorus.it/projects/gearlever/) - Appimage Desktop Integration Tool
- [Steam](https://store.steampowered.com/) - Steam Game Store

#### Dev Tools

- [Ghostty](https://ghostty.org/) - Terminal Emulator
- [NeoVim](https://neovim.io/) - Code Editor
- [Git LFS](https://git-lfs.com/) - Large File Storage with Git
- [Android Tools (adb, fastboot)](https://developer.android.com/tools/releases/platform-tools)
- [Podman](https://podman.io/) and [Docker](https://www.docker.com/) - Container Tools
- [sshfs](https://github.com/libfuse/sshfs) - Mount Remote Directories on your Machine via SSH

## Installation

1. You first need a [Fedora Atomic Desktop](https://fedoraproject.org/atomic-desktops/) installed.
2. Then you rebase with these commands

### Commands:

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
