#!/bin/bash

# Create env
conda create -n opso0.10.2 python=3.10 -y
conda activate opso0.10.2

# Pytorch
pip install torch torchvision torchaudio
pip install torchmetrics

# OpenSoundscape
pip install numpy==1.26.4
pip install opensoundscape==0.10.2

# Tensorflow
# pip install tensorflow tensorflow_hub
