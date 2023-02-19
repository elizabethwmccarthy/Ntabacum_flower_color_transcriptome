#make a consensus file for every loci
for file in /Users/mccarthylab/Documents/Nicotiana_transcriptome_anth_gene_mapping/*.bam
do
	echo "Make consensus $file "
	name=`basename $file .bam`
	make-consensus.py --reference /Users/mccarthylab/Documents/Nicotiana_transcriptome_anth_gene_mapping/anth_genes_N_sylv_N_tomf.fasta --bam $file > $name.fasta --id Nic_anth_gene_sylv_tomf --ivar 
done
