#!/bin/bash
tail -n +2 sars_cov2.fasta > fragment-sizes.txt
tr -d '\n' < fragment-sizes.txt > fragment-sizes.tmp && mv fragment-sizes.tmp fragment-sizes.txt
V=$(cat fragment-sizes.txt)
echo "${V//GATATC/GAT$'\n'ATC}" > fragment-sizes.tmp && mv fragment-sizes.tmp fragment-sizes.txt
awk '{ print length }' fragment-sizes.txt > fragment-sizes.tmp && mv fragment-sizes.tmp fragment-sizes.txt
sort -nr fragment-sizes.txt > fragment-sizes.tmp && mv fragment-sizes.tmp fragment-sizes.txt
