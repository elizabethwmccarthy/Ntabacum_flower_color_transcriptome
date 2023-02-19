#!/bin/bash

#SBATCH --job-name=anthgene_sylv_tomf_mapping
#SBATCH -A bio210008p #partion to be charged
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=elizabeth.mccarthy@cortland.edu
#SBATCH -N 1
#SBATCH --ntasks-per-node=128
#SBATCH -t 47:59:00
#SBATCH -p RM-512 #RM, RM-shared, RM-small, LM, RM-512

cd $SLURM_SUBMIT_DIR

mkdir SAM_files
mkdir bam_files
mkdir sorted_bam_files

#index reference file with gene sequences
bwa-mem2 index anth_genes_N_sylv_N_tomf.fasta

#map each accession individually to the reference file; this will produce a SAM file for each accession
#things to change below in the "R" flag
# ID = sample ID, must be unique
# SM = sample name; species name works
# PL = sequencing platform; this isn't super important for your project
# PU = run ID; not important for your project
# LB = library information; this could be important but I don't think you need to worry about it

#include both R1 and R2 fastq files if you have paired read data, and just one if it is single read data
bwa-mem2 mem -t 16 -R "@RG\tID:N_sylv\tSM:N_sylvestris\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_sylvestris/N_sylvestris_concat.fastq.gz > SAM_files/N_sylvestris.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tomf\tSM:N_tomentosiformis\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tomentosiformis/N_tomentosiformis_concat.fastq.gz > SAM_files/N_tomentosiformis.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_095\tSM:N_tabacum_095-55\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_095-55/N_tabacum_095-55_concat.fastq.gz > SAM_files/N_tabacum_095-55.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_51789\tSM:N_tabacum_51789\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_51789/N_tabacum_51789_concat.fastq.gz > SAM_files/N_tabacum_51789.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_Chu\tSM:N_tabacum_Chulumani\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_Chulumani/N_tabacum_Chulumani_concat.fastq.gz > SAM_files/N_tabacum_Chulumani.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_K326\tSM:N_tabacum_K326\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_K326/N_tabacum_K326_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_tabacum_K326/N_tabacum_K326_concat_R2.fastq.gz > SAM_files/N_tabacum_K326.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_Samsun\tSM:N_tabacum_Samsun\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_Samsun/N_tabacum_Samsun_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_tabacum_Samsun/N_tabacum_Samsun_concat_R2.fastq.gz > SAM_files/N_tabacum_Samsun.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_SR1\tSM:N_tabacum_SR1\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_SR1/N_tabacum_SR1_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_tabacum_SR1/N_tabacum_SR1_concat_R2.fastq.gz > SAM_files/N_tabacum_SR1.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_Yunyan87pink\tSM:N_tabacum_Yunyan87_pink\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_Yunyan87_pink/N_tabacum_Yunyan87_pink_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_tabacum_Yunyan87_pink/N_tabacum_Yunyan87_pink_concat_R2.fastq.gz > SAM_files/N_tabacum_Yunyan87_pink.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_tab_Yunyan87white\tSM:N_tabacum_Yunyan87_white\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_tabacum_Yunyan87_white/N_tabacum_Yunyan87_white_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_tabacum_Yunyan87_white/N_tabacum_Yunyan87_white_concat_R2.fastq.gz > SAM_files/N_tabacum_Yunyan87_white.sam
bwa-mem2 mem -t 16 -R "@RG\tID:QM24\tSM:QM24_N_tabacum\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/QM24/QM24_concat.fastq.gz > SAM_files/QM24.sam
bwa-mem2 mem -t 16 -R "@RG\tID:QM25\tSM:QM25_N_tabacum\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/QM25/QM25_concat.fastq.gz > SAM_files/QM25.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_atten\tSM:N_attenuata\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_attenuata/N_attenuata_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_attenuata/N_attenuata_concat_R2.fastq.gz > SAM_files/N_attenuata.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_bonarien\tSM:N_bonariensis\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_bonariensis/N_bonariensis_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_bonariensis/N_bonariensis_concat_R2.fastq.gz > SAM_files/N_bonariensis.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_cord\tSM:N_cordifolia\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_cordifolia/SRR2106516_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_cordifolia/SRR2106516_2.fastq.gz > SAM_files/N_cordifolia.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_knight\tSM:N_knightiana\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_knightiana/N_knightiana_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_knightiana/N_knightiana_concat_R2.fastq.gz > SAM_files/N_knightiana.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_langs\tSM:N_langsdorffii\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_langsdorffii/SRR6516157_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_langsdorffii/SRR6516157_2.fastq.gz > SAM_files/N_langsdorffii.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_long\tSM:N_longiflora\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_longiflora/SRR6516158_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_longiflora/SRR6516158_2.fastq.gz > SAM_files/N_longiflora.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_noct\tSM:N_noctiflora\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_noctiflora/SRR2106514_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_noctiflora/SRR2106514_2.fastq.gz > SAM_files/N_noctiflora.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_obtus_Bald\tSM:N_obtusifolia_Baldwin\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_obtusifolia_Baldwin/N_obtusifolia_Baldwin_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_obtusifolia_Baldwin/N_obtusifolia_Baldwin_concat_R2.fastq.gz > SAM_files/N_obtusifolia_Baldwin.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_obtus_TW143_paired\tSM:N_obtusifolia_TW143_paired\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_obtusifolia_TW143/N_obtusifolia_TW143_paired_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_obtusifolia_TW143/N_obtusifolia_TW143_paired_concat_R2.fastq.gz > SAM_files/N_obtusifolia_TW143_paired.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_obtus_TW143_single\tSM:N_obtusifolia_TW143_single\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_obtusifolia_TW143/N_obtusifolia_TW143_single_concat.fastq.gz > SAM_files/N_obtusifolia_TW143_single.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_otoph\tSM:N_otophora\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_otophora/SRR6516159_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_otophora/SRR6516159_2.fastq.gz > SAM_files/N_otophora.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_pani\tSM:N_paniculata\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_paniculata/N_paniculata_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_paniculata/N_paniculata_concat_R2.fastq.gz > SAM_files/N_paniculata.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_plumba\tSM:N_plumbaginifolia\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_plumbaginifolia/N_plumbaginifolia_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_plumbaginifolia/N_plumbaginifolia_concat_R2.fastq.gz > SAM_files/N_plumbaginifolia.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_raimon\tSM:N_raimondii\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_raimondii/SRR6516154_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_raimondii/SRR6516154_2.fastq.gz > SAM_files/N_raimondii.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_setch\tSM:N_setchellii\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_setchellii/SRR2106530_1.fastq.gz /ocean/projects/bio210008p/emccarth/N_setchellii/SRR2106530_2.fastq.gz > SAM_files/N_setchellii.sam
bwa-mem2 mem -t 16 -R "@RG\tID:N_undu\tSM:N_undulata\tPL:IlluminaNovaSeq\tPU:HTNMKDSXX\tLB:Psomagen" anth_genes_N_sylv_N_tomf.fasta /ocean/projects/bio210008p/emccarth/N_undulata/N_undulata_concat_R1.fastq.gz /ocean/projects/bio210008p/emccarth/N_undulata/N_undulata_concat_R2.fastq.gz > SAM_files/N_undulata.sam


#convert SAM to BAM for sorting

for file in SAM_files/*.sam
do
	echo "Convert $file to to BAM"
	name=`basename $file .sam`
	/jet/home/emccarth/anaconda3/bin/samtools view -S -b $file > bam_files/$name.bam
	rm $file
done


#Sort BAM for SNP calling
for file in bam_files/*.bam
do
	echo "Sort $file"
	name=`basename $file .bam`
	readid=$name
	/jet/home/emccarth/anaconda3/bin/samtools sort -o sorted_bam_files/$readid.bam $file
	rm $file
done


#Index BAM files
for file in sorted_bam_files/*.bam
do
	echo "Sort $file"
	name=`basename $file .bam`
	readid=$name
	/jet/home/emccarth/anaconda3/bin/samtools index $file
done




