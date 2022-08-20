#!/bin/bash

cd ~

sudo nala update
sudo nala updgrade


# Nala, an alternative to nala
echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/nala/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/nala/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/nala/sources.list.d/volian-archive-scar-unstable.list
sudo nala update && sudo nala install nala

#---------------------------
# Utils

sudo nala install curl
sudo nala install gcc


#---------------------------
# Snap apps 

sudo snap install spotify
sudo snap install slack
sudo snap install bitwarden

#---------------------------
# Appimages folder

mkdir Appimages

#---------------------------
# QGIS

sudo nala install gnupg software-properties-common

wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/nala/trusted.gpg.d/qgis-archive.gpg --import
sudo chmod a+r /etc/nala/trusted.gpg.d/qgis-archive.gpg
sudo add-nala-repository "deb https://qgis.org/ubuntu $(lsb_release -c -s) main"
sudo nala update
sudo nala install qgis qgis-plugin-grass

#---------------------------
# CUDA

# Some dependencies and utilities
# sudo nala update && sudo nala install gcc
sudo nala update && sudo nala install build-essential
sudo nala update && sudo nala install libglvnd-dev pkg-config
sudo nala update && sudo nala install freeglut3 freeglut3-dev libxi-dev libxmu-dev\

# Install cuda for ubuntu
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_local
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/nala/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda-repo-ubuntu2204-11-7-local_11.7.0-515.43.04-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-11-7-local_11.7.0-515.43.04-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-11-7-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo nala update
sudo nala -y install cuda

#---------------------------
# NordVPN

wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo nala install nordvpn-release_1.0.0_all.deb
sudo nala update
sudo nala install nordvpn

