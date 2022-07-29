#!/bin/bash

# Using shift operator
i=1;
j=$#;
while [ $i -le $j ]
do
    echo "Executing for: $i: $1";
    aws s3 cp "junction #$1" "s3://wbgdime3prodpdmz-airs/test/$1/" --recursive --profile cv
    i=$((i + 1));
    shift 1;
done