#!/bin/bash

cd ~

sudo apt update
sudo apt updgrade

#---------------------------
# Utils

sudo apt install curl
sudo apt install gcc


#---------------------------
# QGIS

sudo apt install gnupg software-properties-common

wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
sudo add-apt-repository "deb https://qgis.org/ubuntu $(lsb_release -c -s) main"
sudo apt update
sudo apt install qgis qgis-plugin-grass


#---------------------------
# CUDA

# Some dependencies and utilities
# sudo apt update && sudo apt install gcc
sudo apt update && sudo apt install build-essential
sudo apt update && sudo apt install libglvnd-dev pkg-config
sudo apt update && sudo apt install freeglut3 freeglut3-dev libxi-dev libxmu-dev\

# Install cuda for ubuntu
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_local
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda-repo-ubuntu2204-11-7-local_11.7.0-515.43.04-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-11-7-local_11.7.0-515.43.04-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-11-7-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda

#---------------------------
# NordVPN

wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo apt-get install nordvpn-release_1.0.0_all.deb
sudo apt-get update
sudo apt-get install nordvpn



# Make into a function?
# echo "Press any key to continue"
# while [ true ] ; do
#     read -t 3 -n 1
#     if [ $? = 0 ] ; then
#     exit ;
# else
#     echo "waiting for the keypress"
# fi
# done
