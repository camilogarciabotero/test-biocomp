tr -d '\n' < sars_cov2.fasta | AWK -F GATATC ' {for (i=1; i<=NF; ++i) {printf "%s%s", length($i), (i==NF)?"\n":" "}}' > fragmentos-cami.txt
