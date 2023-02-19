for file in BAMs_from_Mapping/*.bam
do
	name=`basename $file .bam`
	samtools sort $file --threads 8 -o $name.sorted.bam
	samtools index $name.sorted.bam
	samtools flagstat $name.sorted.bam > $name.flagstat_initial.txt
	samtools view -b -h --min-MQ 5 --threads 8 $name.sorted.bam > $name.filter.bam
	samtools stat $name.filter.bam > $name.filtered_stats.txt
	rm $name.filter.bam
done
