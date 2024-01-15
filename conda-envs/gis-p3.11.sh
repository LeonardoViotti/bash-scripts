#!/bin/bash

conda create -n gis-p3.11 python=3.11

conda activate gis-p3.11 

pip install jupyterlab
pip install earthengine-api

pip install pandas numpy geopandas
pip install folium shapely
