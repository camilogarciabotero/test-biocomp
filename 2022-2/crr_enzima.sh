#! /usr/bin/env bash
#https://stackoverflow.com/questions/37997728/counting-string-length-before-and-after-a-match-line-by-line-in-bash-or-sed

tr -d '\n' < sars_cov2.fasta | awk -F GATATC ' {for (i=1; i<=NF; ++i) {printf "%s%s", length($i), (i==NF)?"\n":" "}}' > crr_resultado.txt
