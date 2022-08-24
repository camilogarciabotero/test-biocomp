#!/bin/bash
tail -n +2 sars_cov2.fasta > resultados-MTO.txt
tr -d '\n' < resultados-MTO.txt > resultados-MTO.tmp && mv resultados-MTO.tmp resultados-MTO.txt
str=$(cat resultados-MTO.txt)
echo "${str//GATATC/GAT$'\n'ATC}" > resultados-MTO.tmp && mv resultados-MTO.tmp resultados-MTO.txt
awk '{ print length }' resultados-MTO.txt > resultados-MTO.tmp && mv resultados-MTO.tmp resultados-MTO.txt
sort -nr resultados-MTO.txt > resultados-MTO.tmp && mv resultados-MTO.tmp resultados-MTO.txt

