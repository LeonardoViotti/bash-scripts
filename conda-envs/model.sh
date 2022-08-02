#!/bin/bash

# Enviroment for protyping and modelling

conda create -n model python=3.10
conda activate model

pip install pygad
pip install semopy
pip install plotly
