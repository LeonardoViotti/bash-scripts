#!/bin/bash

# https://stackoverflow.com/a/29920087/8692138

for i in *.zip; do
  newdir="${i:0:-4}" && mkdir "$newdir"
  unzip "$i" -d  "$newdir"
done