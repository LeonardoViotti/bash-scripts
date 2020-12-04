#!/bin/bash

# General updates
sudo apt update
sudo apt upgrade

# Install commonly used packages
sudo apt install vim openconnect xrdp

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#------------------------------------
# Set static IP address
