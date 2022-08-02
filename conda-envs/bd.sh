#!/bin/bash

# Big data local conda environment for prototyping and sketching

conda create -n bd python=3.10
conda activate bd

conda install -c conda-forge pyspark

# For some reason have to manually "bind" driver
# pyspark -c spark.driver.bindAddress=127.0.0.1

