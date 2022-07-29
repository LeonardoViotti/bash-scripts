#!/bin/bash

# https://stackoverflow.com/a/29920087/8692138

# Uncompress .zip
for i in *.zip; do
  newdir="${i:0:-4}" && mkdir "$newdir"
  unzip "$i" -d  "$newdir"
done

# Uncompress .rar
for i in *.rar; do
  unar "$i" -d  "$newdir"
done




