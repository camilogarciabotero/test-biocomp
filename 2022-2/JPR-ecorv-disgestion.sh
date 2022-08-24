#!/bin/bash

grep -v ">" sars_cov2.fasta | sed -z 's/\n//g' | awk '{gsub(/GATATC/,"GAT\nATC"); print}' | while read seq || [[ -n $seq ]];
do
	echo -n "$seq" | fold -w 1 | wc -l
done

