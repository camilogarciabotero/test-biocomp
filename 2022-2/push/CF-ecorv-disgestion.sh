#!/bin/bash
tail -n +2 < sars_cov2.fasta > AAChain.txt
tr -d "\n" < AAChain.txt > temp.tmp && mv temp.tmp AAChain.txt
string=$(cat AAChain.txt)
echo "${string//GATATC/GAT ATC}" > temp.tmp && mv temp.tmp AAchain.txt
tr ' ' '\n' < AAChain.txt > temp.tmp && mv temp.tmp AAChain.txt
awk '{ print length }' AAChain.txt

