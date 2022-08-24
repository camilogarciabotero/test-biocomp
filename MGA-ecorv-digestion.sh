#!/bin/bash
tail -n +2 sars_cov2.fasta | tr -d '\n' > fragment-sizes.txt
Var1=$(cat fragment-sizes.txt)
echo "${Var1//GATATC/GAT$'\n'ATC}" | awk '{ print length }' | sort -nr > fragment-sizes.txt
