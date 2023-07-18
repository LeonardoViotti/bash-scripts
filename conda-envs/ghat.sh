#!/bin/bash

# Gray hat-  Webscraping and security conda environment

eval "$(conda shell.bash hook)"
# conda create -n ghat python=3.11 -y
conda init bash
conda create -n ghat python=3.10 -y
conda activate ghat

pip install youtube_dl
pip install pytube
pip install selenium
pip install requests
