#!/bin/bash

# This script install r packages dependencies

# Tidyverse
sudo apt-get install g++
sudo apt install libcurl4-openssl-dev libssl-dev libxml2-dev

# Spatial packages
sudo apt-get install libgdal-dev
sudo apt-get install libgeos-dev

# sf, lfe and readstata13
sudo apt-get install gfortran
sudo apt-get install r-base-dev
sudo apt-get install libudunits2-dev 

# For Rfast
sudo apt-get install libgsl0-dev

