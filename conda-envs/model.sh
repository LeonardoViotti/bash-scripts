#!/bin/bash

# Enviroment for protyping and modelling

# bash -i model.sh

conda create -n model python=3.10 -y
conda activate model

pip install pygad
pip install evotorch
# pip install semopy
pip install numba
pip install tqdm
pip install plotly
pip install plotnine

pip install jupyterlab
pip install earthengine-api
pip install geemap
pip install geopandas
pip install folium
pip install shapely
