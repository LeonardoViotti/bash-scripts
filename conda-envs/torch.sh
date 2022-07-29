#!/bin/bash

conda create -n torch python=3.9
conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge
