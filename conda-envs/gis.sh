#!/bin/bash

# GIS conda environment


conda create -n gis python=3.8 -y
conda activate gis

pip install jupyterlab
pip install earthengine-api
pip install geemap
pip install geopandas
pip install folium
pip install shapely


