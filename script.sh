#!/bin/bash
set -euo pipefail

# update system
sudo pacman -Syu --needed

# official packages
sudo pacman -S --needed \
  fuse2 curl discord docker steam zed obsidian obs-studio flatpak pavucontrol \
  gpu-screen-recorder spotify-launcher

# AUR packages
yay -S --needed \
  zen-browser spicetify-cli r2modman android-studio

# rustup
curl https://sh.rustup.rs -sSf | sh -s -- -y

# spicetify install
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh

# flatpak setup
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.vinegarhq.Sober it.mijorus.gearlever com.github.wwmm.easyeffects

# docker
#sudo systemctl enable --now docker

#docker volume create node_red_data
#docker run -d \
#  -p 1880:1880 \
#  -v node_red_data:/data \
#  --name mynodered \
#  --restart unless-stopped \
#  nodered/node-red
