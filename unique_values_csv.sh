#!/bin/bash

# Count unique lines of first column of csv file
awk -F ',' '{print $1}' file.csv | sort -u | wc -l