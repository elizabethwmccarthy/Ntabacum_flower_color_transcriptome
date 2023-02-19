
#prep for alignment
#align_and_estimate_abundance.pl --transcripts Nicotiana_insilico_ENA_Nano_min800_mod_Jan23.fasta --est_method RSEM --aln_method bowtie2 --gene_trans_map Nicotiana_insilico_ENA_Nano_min800.gene_trans_map --prep_reference

#abundance estimation
nohup align_and_estimate_abundance.pl --transcripts Nicotiana_insilico_ENA_Nano_min800_mod_Jan23.fasta --seqType fq --samples_file All_samples.txt --est_method RSEM --aln_method bowtie2 --thread_count 8 --gene_trans_map Nicotiana_insilico_ENA_Nano_min800.gene_trans_map & 

#generate counts matrix
abundance_estimates_to_matrix.pl --est_method RSEM --gene_trans_map Nicotiana_insilico_ENA_Nano_min800.gene_trans_map --quant_files target_files.txt --name_sample_by_basedir

#DE analysis with just gene counts
run_DE_analysis.pl --matrix RSEM.gene.counts.matrix --method voom --samples_file samples_described.txt

#PCA plot
PtR --matrix RSEM.gene.TMM.EXPR.matrix -s samples_described.txt --min_rowSums 10 --log2 --CPM --center_rows --prin_comp 3 

#this will change each time
cd voom.2281668.dir

#clustering DE genes
analyze_diff_expr.pl --matrix ../RSEM.gene.TMM.EXPR.matrix -P 0.05 -C 2 --samples ../samples_described.txt --order_columns_by_samples_file --max_genes_clus 60000

#partitioning into expression clusters
define_clusters_by_cutting_tree.pl -R diffExpr.P0.05_C2.matrix.RData --Ptree 60 --lexical_column_ordering 
