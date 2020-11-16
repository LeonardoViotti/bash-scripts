#!/bin/bash

# General updates
sudo apt update
sudo apt upgrade

# Install vim
sudo apt install vim

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#------------------------------------
# Set static IP address
