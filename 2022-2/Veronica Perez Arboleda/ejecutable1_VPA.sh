#!/bin/bash
tail -n +2 sars_cov2.fasta > fragmentos.txt
tr -d '\n' < fragmentos.txt > fragmentos.tmp && mv fragmentos.tmp fragmentos.txt
cadena=$(cat fragmentos.txt)
echo "${cadena//GATATC/GAT ATC}" > fragmentos.tmp && mv fragmentos.tmp fragmentos.txt
tr ' ' '\n' < fragmentos.txt > fragmentos.tmp && mv fragmentos.tmp fragmentos.txt
awk '{ print length }' fragmentos.txt > fragmentos.tmp && mv fragmentos.tmp fragmentos.txt
sort -nr fragmentos.txt > fragmentos.tmp && mv fragmentos.tmp fragmentos.txt

