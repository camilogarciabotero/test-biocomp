#! /usr/bin/env bash

echo "" > fragment-sizes.txt
sed '1d' sars_cov2.fasta | tr -d '\n' | sed 's/GATATC/GAT\nATC/g' | while read line || [[ -n $line ]];
do
	echo -n "$line" | wc -c >> fragment-sizes.txt
done

