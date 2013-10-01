#!/bin/bash
#-*- coding:utf-8 -*-

set -e

START=$(date +%s)

# Cleanup header row
head -1 $1 | sed "s/ /_/g" | sed "s/\.//g" | sed "s/§/Paragraf/g" > header.csv
tail -n+2 $1 > rest.csv
cat header.csv rest.csv > $1
rm header.csv rest.csv

# Get filename without suffix
relative_path=$(basename "$1")
filename="${relative_path%.*}"

$TARQL_HOME/bin/tarql transformation.rq $1 > $filename.ttl

END=$(date +%s)
DIFF=$(echo "$END - $START" | bc)

echo "Transformation done in $DIFF seconds."
