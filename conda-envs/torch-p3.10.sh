#!/bin/bash

# Create env
conda create -n torch-p3.10 python=3.10 -y

conda activate torch-p3.10

# Pytorch
pip install torch torchvision torchaudio
pip install torchmetrics

# OpenCV
sudo apt install libopencv-dev python3-opencv
pip install opencv-python

# Jupyter
pip install jupyterlab

# Other libraries
pip install pandas
pip install wandb

pip install opensoundscape==0.9.1
pip install split-folders[full]
