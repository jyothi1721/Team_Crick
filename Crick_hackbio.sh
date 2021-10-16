#!/bin/bash
REPO = https://github.com/jyothi1721/Team_Crick
OUTPUT_FILE = Crick_hackbio.csv

my_value=$(python Josphat.py)
echo $my_value >> Crick_hackbio.csv

my_value_1=$(python Nourhan.py)
echo $my_value_1 > Crick_hackbio.csv

Rscript KV.R >> Crick_hackbio.csv

Rscript Pratiksha.R >> Crick_hackbio.csv

sed -i -e '1i"Name","Email","slack","biostack"' Crick_hackbio.csv

gcc Jyothi.C > Crick_hackbio.csv

