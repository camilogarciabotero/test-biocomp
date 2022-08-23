#! /usr/bin/env bash

sed "1d" sars_cov2.fasta | tr -d '\n' | sed 's/GATATC/GAT\nATC/g' | awk '{ print length }' > EGT_fragment-sizes.txt
