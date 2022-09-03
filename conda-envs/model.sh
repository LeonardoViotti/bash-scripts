#!/bin/bash

# Enviroment for protyping and modelling

conda create -n model python=3.10
conda activate model

conda install -c conda-forge plotnine
pip install pygad
pip install evotorch
pip install semopy
pip install plotly
