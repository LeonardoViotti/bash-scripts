#!/bin/bash

# Create env
conda create -n torch-p3.9 python=3.9 -y

conda activate torch-p3.9

# Pytorch
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116

# OpenCV
sudo apt install libopencv-dev python3-opencv
pip install opencv-python

# Jupyter
pip install jupyterlab 

# Other libraries
pip install pandas
pip install opensoundscape
pip install split-folders[full]
