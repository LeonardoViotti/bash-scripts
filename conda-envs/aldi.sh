#!/bin/bash

conda create -n aldi python=3.9
conda activate aldi

pip install torch torchvision torchaudio

# git clone git@github.com:justinkay/aldi.git
# cd aldi

# Install Detectron2
git submodule update --init --recursive
cd libs/detectron2
pip install -e .

# Install ALDI
cd ~/Github/aldi
pip install -e .
