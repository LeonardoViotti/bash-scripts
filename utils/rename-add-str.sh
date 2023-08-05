#!/bin/bash

# This findes all files in directory that don't match a patern adn rename them to match that patern

# Select files without patern
files=$(ls | grep -v patern)

# Loop renaming
for f in $files; do mv $f patern_$f; done
