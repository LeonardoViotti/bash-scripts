#!/bin/bash

# Create env
conda create -n torch-p3.8 python=3.8
conda activate torch-p3.8

# Pytorch
conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge

# OpenCV
sudo apt install libopencv-dev python3-opencv
pip install opencv-python

# Other libraries
pip install opensoundscape==0.7.0
conda install pandas
pip install boto3