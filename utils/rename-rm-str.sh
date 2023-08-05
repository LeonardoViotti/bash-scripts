#!/bin/bash

for file in *; do mv "${file}" "${file/str-to-remove/}"; done