#!/bin/bash

tail -n +2 sars_cov2.fasta > sars_cov_2.txt

tr -d "\n" <  sars_cov_2.txt > sars_cov_2.tmp && mv sars_cov_2.tmp sars_cov_2.txt

Semidoctorado=$(cat sars_cov_2.txt)

echo "${Semidoctorado//GATATC/GAT ATC}"

tr ' ' '\n' < sars_cov_2.txt > sars_cov_2.tmp && mv sars_cov_2.tmp sars_cov_2.txt

awk '{ print length }' sars_cov_2.txt > sars_cov_2.tmp && mv sars_cov_2.tmp sars_cov_2.txt

sort -nr sars_cov_2.txt > sars_cov_2.tmp && mv sars_cov_2.tmp sars_cov_2.txt

