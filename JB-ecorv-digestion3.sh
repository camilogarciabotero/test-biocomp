#! /bin/env bash


tr -d '\n' < sars_cov2.fasta | awk -F GATATC ' {for (i=1; i<=NF; ++i) {printf "%s%s", length($i), (i==NF)?"\n":" "}}' > JB-fragment-sizes.txt | tr -d '\n' < sars_cov2.fasta | grep --color "GATATC"
