#!/bin/bash

# General updates
sudo apt update
sudo apt upgrade

# Install commonly used packages
sudo apt install vim openconnect xrdp

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Install nordvpn
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
sudo usermod -aG nordvpn $USER

#------------------------------------
# Set static IP address
