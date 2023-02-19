setwd("/Users/elizabeth.mccarth02//Dropbox/Nicotiana_DE_2019_Nano/ENA_Nano_min800_assemblies_Oct2019")


#Gene contig IDs for all anthocyanin genes
read.csv("anth_gene_IDs_1-15-23.csv")->anthgenes
anthgenes<-as.list(anthgenes)
anthgenes<-unlist(anthgenes)

#Extract the TMM for anth genes from all the DE genes from 60% dev
read.csv("RSEM.gene.TMM.EXPR_60_1-15-23.matrix.csv")->allTMM60
anthTMM60<-allTMM60[allTMM60$GeneID %in% anthgenes, ]
write.csv(anthTMM60, file = "anth_TMM_60_1-15-23.csv")

#Extract the TMM for anth genes from all the DE genes from 85% dev
read.csv("RSEM.gene.TMM.EXPR_85_1-16-23.matrix.csv")->allTMM85
anthTMM85<-allTMM85[allTMM85$GeneID %in% anthgenes, ]
write.csv(anthTMM85, file = "anth_TMM_85_1-16-23.csv")

#Extract the TMM for anth genes from all the DE genes from 95% dev
read.csv("RSEM.gene.TMM.EXPR_95_1-15-23.matrix.csv")->allTMM95
anthTMM95<-allTMM95[allTMM95$GeneID %in% anthgenes, ]
write.csv(anthTMM95, file = "anth_TMM_95_1-15-23.csv")


#Extract the logFC for anth genes from all DE genes with logFC>|2|  from 60% dev
read.csv("all_logFC_log2_60_1-17-23.csv")->allDE60
anthDE60<-allDE60[allDE60$X %in% anthgenes, ]
write.csv(anthDE60, file = "anth_logFC_log2_60_1-17-23.csv")

#Extract the logFC for anth genes from all the DE genes with logFC>|2| from 85% dev
read.csv("all_logFC_log2_85_1-17-23.csv")->allDE85
anthDE85<-allDE85[allDE85$X %in% anthgenes, ]
write.csv(anthDE85, file = "anth_logFC_log2_85_1-17-23.csv")

#Extract the logFC for anth genes from all the DE genes with logFC>|2| from 95% dev
read.csv("all_logFC_log2_95_1-17-23.csv")->allDE95
anthDE95<-allDE95[allDE95$X %in% anthgenes, ]
write.csv(anthDE95, file = "anth_logFC_log2_95_1-17-23.csv")




#Gene contig IDs for all one-to-one homeologs
read.csv("sylvtomf_one-to-one_homeolog_IDs_1-3-23.csv")->homeologs
homeologs<-as.list(homeologs)
homeologs<-unlist(homeologs)

#Extract the TMM for one-to-one homeologs from all the genes from 60% dev
read.csv("RSEM.gene.TMM.EXPR_60_1-15-23.matrix.csv")->allTMM60
homTMM60<-allTMM60[allTMM60$GeneID %in% homeologs, ]
write.csv(homTMM60, file = "homeologs_TMM_60_1-15-23.csv")

#Extract the TMM for one-to-one homeologs from all the genes from 85% dev
read.csv("RSEM.gene.TMM.EXPR_85_1-16-23.matrix.csv")->allTMM85
homTMM85<-allTMM85[allTMM85$GeneID %in% homeologs, ]
write.csv(homTMM85, file = "homeologs_TMM_85_1-16-23.csv")

#Extract the TMM for one-to-one homeologs from all the genes from 95% dev
read.csv("RSEM.gene.TMM.EXPR_95_1-15-23.matrix.csv")->allTMM95
homTMM95<-allTMM95[allTMM95$GeneID %in% homeologs, ]
write.csv(homTMM95, file = "homeologs_TMM_95_1-15-23.csv")


