#!/bin/bash

# GIS conda environment


conda create -n gis python=3.8
conda activate gis

pip install jupyterlab
pip install earthengine-api
pip install geemap

conda install --channel conda-forge geopandas
# conda install -c conda-forge folium

