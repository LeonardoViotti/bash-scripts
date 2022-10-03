#!/bin/bash

cd ~

# Nala, an alternative to apt

wget https://gitlab.com/volian/volian-archive/uploads/b20bd8237a9b20f5a82f461ed0704ad4/volian-archive-keyring_0.1.0_all.deb 
wget https://gitlab.com/volian/volian-archive/uploads/d6b3a118de5384a0be2462905f7e4301/volian-archive-nala_0.1.0_all.deb

sudo apt install ./volian-archive*.deb
echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
sudo apt update && sudo apt install nala


sudo nala update
sudo nala updgrade

#---------------------------
# Utils

sudo nala install curl
sudo nala install gcc
sudo nala install vim
# sudo nala install terminator
sudo nala install -y tilix
sudo nala install ffmpeg

#---------------------------
# Git

sudo nala install git-all
git config --global user.email "leonardoviotti@gmail.com"
git config --global user.name "LeonardoViotti"
git config --global core.editor "vim"


#---------------------------
# Snap apps 

sudo snap install spotify
sudo snap install slack
sudo snap install bitwarden

#---------------------------
# Battery optimizer

sudo snap install auto-cpufreq 
auto-cpufreq --install

#---------------------------
# Appimages 

sudo add-apt-repository universe
sudo nala install libfuse2

mkdir Appimages

# Obsidian
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v0.15.9/Obsidian-0.15.9.AppImage
chmod 775 Obsidian-0.15.9.AppImage

mv Obsidian-0.15.9.AppImage ~/Appimages/

printf "[Desktop Entry]\nType=Application\nName=Obsidian\nComment=Obsidian\nIcon=/home/leonardo/Appimages/Obsidian-icon.png\nExec=/home/leonardo/Appimages/Obsidian-0.15.9.AppImage\nTerminal=false\nCategories=Office" > ~/.local/share/applications/obsidian.desktop

wget --output-document=test.png https://play.google.com/store/apps/details?id=md.obsidian&hl=en_US&gl=US

#---------------------------
# Conda

wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh

#---------------------------
# R

# Download rstudio-download-1.2.3.deb!

# RStudio Dependencies
sudo nala install dpkg-sig
sudo nala install libssl1.0.0 libssl1.0.2 libssl1.1
sudo nala install libclang-dev

# Tidyverse
sudo nala install g++
sudo nala install libcurl4-openssl-dev libssl-dev libxml2-dev

# Spatial packages
sudo nala install libgdal-dev
sudo nala install libgeos-dev

# sf, lfe and readstata13
sudo nala install gfortran
sudo nala install libudunits2-dev 

# For Rfast
sudo nala install libgsl0-dev

# R
sudo nala install r-base-core
sudo nala install r-base-dev


# RStudio

# # From https://community.rstudio.com/t/dependency-error-when-installing-rstudio-on-ubuntu-22-04-with-libssl/135397/4
wget https://s3.amazonaws.com/rstudio-ide-build/desktop/jammy/amd64/rstudio-2022.07.2-567-amd64.deb

gpg --keyserver keyserver.ubuntu.com --recv-keys 3F32EE77E331692F
# gpg --import /tmp/rstudio.key
dpkg-sig --verify rstudio-2022.07.2-567-amd64.deb
sudo dpkg -i rstudio-2022.07.2-567-amd64.deb

# sudo nala install gdebi-core
# wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2022.07.2-576-amd64.deb
# sudo gdebi rstudio-server-2022.07.2-576-amd64.deb


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

sudo usermod -aG nordvpn $USER