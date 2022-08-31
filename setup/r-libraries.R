
install.packages("pacman")


# General dependencies
pacman::p_load("dtplyr", 
               "reprex")

# Data
pacman::p_load("tidyverse")

# GIS
pacman::p_load("raster", 
               # "sf", 
               "rgdal",
               "ggmap")

# Plotting
pacman::p_load("grid", 
               "scales", 
               "viridis", 
               "ggthemes")
