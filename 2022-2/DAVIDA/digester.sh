grep -v ">" sars_cov2.fasta | tr -d '\n' | sed -e 's/GATATC/GAT\nATC/g' | awk '{print length($0)}' > resultado.txt 
