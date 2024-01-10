#!/bin/bash

# Create env
conda create -n opso0101 python=3.10 -y
conda activate opso0101

# Pytorch
pip install torch torchvision torchaudio
pip install torchmetrics

# OpenSoundscape
pip install opensoundscape==0.10.1

# Tensorflow
pip install tensorflow tensorflow_hub

# Jupyter if you want
# pip install jupyterlab
