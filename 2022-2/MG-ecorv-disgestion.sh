#!/bin/bash
sed "1d" sars_cov2.fasta > fasta.txt
tr -d '\n' < fasta.txt >> fasta1.txt
sed -i "s/GATATC/GAT ATC/g" "fasta1.txt"
tr " " "\n" < fasta1.txt >> cortes.txt
awk '{print length}' cortes.txt >> fragment-sizes.txt

