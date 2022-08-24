#!/bin/bash
tail -n +2 sars_cov2.fasta | tr -d '\n' | sed 's/GATATC/GAT\nATC/g' | awk '{ print length }' | sort -nr > Fragment_Results.txt