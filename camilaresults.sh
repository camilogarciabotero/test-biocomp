#! /usr/bin/env bash

edit=$(tr -d '\n' < sars_cov2.fasta)
cantidad=0
secuencia=$(echo $edit | wc -c)
secuencia=$((secuencia-7))
cat /dev/null > ResultsCRV.txt
for i in $(seq 0 $secuencia)
	do
	((cantidad=cantidad+1))
	if [[ ${edit:i:6} == GATATC ]]
		then
		echo $cantidad >> ResultsCRV.txt
		cantidad=-6
	fi
done
echo $cantidad >> ResultsCRV.txt
