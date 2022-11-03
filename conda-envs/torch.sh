#!/bin/bash

# Create env
conda create -n torch-p3.8 python=3.8 -y

conda activate torch-p3.8

# Pytorch
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116

# OpenCV
sudo apt install libopencv-dev python3-opencv
pip install opencv-python

# Other libraries
pip install opensoundscape==0.7.0
pip install boto3
pip install split-folders[full]
