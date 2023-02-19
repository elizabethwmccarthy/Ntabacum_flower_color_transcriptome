library(gplots)
setwd("/Users/elizabeth.mccarth02//Dropbox/Nicotiana_DE_2019_Nano/ENA_Nano_min800_assemblies_Oct2019")

#copy/pasted gene IDs from anth_logFC_log2 files, added 'comp' as column heading
#Make lists of DE genes for each comparison
read.csv("anth_DE_QM24_tab095_60_1-17-23.csv")->QM24tab09560
QM24tab09560<-as.list(QM24tab09560)

read.csv("anth_DE_QM25_tabChu_60_1-17-23.csv")->QM25tabChu60
QM25tabChu60<-as.list(QM25tabChu60)

read.csv("anth_DE_tab095_tabChu_60_1-17-23.csv")->tab095tabChu60
tab095tabChu60<-as.list(tab095tabChu60)


read.csv("anth_DE_QM24_tab095_85_1-17-23.csv")->QM24tab09585
QM24tab09585<-as.list(QM24tab09585)

read.csv("anth_DE_QM25_tabChu_85_1-17-23.csv")->QM25tabChu85
QM25tabChu85<-as.list(QM25tabChu85)

read.csv("anth_DE_tab095_tabChu_85_1-17-23.csv")->tab095tabChu85
tab095tabChu85<-as.list(tab095tabChu85)


#get out overlapping gene IDs for all Venn intersections
lightvsdarktabs60<-venn(list(QM24tab09560$comp, QM25tabChu60$comp, tab095tabChu60$comp), show.plot = FALSE)
str(lightvsdarktabs60)
inters<-attr(lightvsdarktabs60, "intersections")
inters<-sapply(inters, '[', seq(max(sapply(inters, length))))
write.csv(inters, file="venn_overlap_lightvsdarktabs_60_log2_1-17-23.csv")

lightvsdarktabs85<-venn(list(QM24tab09585$comp, QM25tabChu85$comp, tab095tabChu85$comp), show.plot = FALSE)
str(lightvsdarktabs85)
inters<-attr(lightvsdarktabs85, "intersections")
inters<-sapply(inters, '[', seq(max(sapply(inters, length))))
write.csv(inters, file="venn_overlap_lightvsdarktabs_85_log2_1-17-23.csv")



library(UpSetR)
#plot upset plots to view number of shared DE anth genes per comparison

#data from anth_DE_xx_60_1-17-23.csv files
listInput60<-list(QM24vstab095=c("Ntome_NODE_269_length_6958_cov_177", "Ntome_NODE_23004_length_983_cov_98", "Ntome_NODE_458_length_6137_cov_152", "Ntome_NODE_17574_length_1395_cov_290", "Ntome_NODE_3232_length_3609_cov_134", "Ntome_NODE_4642_length_3174_cov_75"), tabChuvsQM25=c("Nsylvestris_NODE_16810_length_1371_cov_224", "Ntome_NODE_17574_length_1395_cov_290"), tabChuvstab095=c("Nsylvestris_NODE_4044_length_3219_cov_205", "Ntome_NODE_17155_length_1434_cov_311", "Ntome_NODE_3232_length_3609_cov_134", "Ntome_NODE_4642_length_3174_cov_75"))

png(filename="upset_ltvsdk_60_1-15-23.png", width=8, height=4, units="in", res=300)
upset(fromList(listInput60), order.by="degree", text.scale=1.5)
dev.off()

#data from anth_DE_xx_85_1-17-23.csv files
listInput85<-list(QM24vstab095=c("Nsylvestris_NODE_15824_length_1466_cov_202", "Ntome_NODE_269_length_6958_cov_177", "Ntome_NODE_3232_length_3609_cov_134", "Ntome_NODE_4642_length_3174_cov_75"), tabChuvsQM25=c("Nsylvestris_NODE_16810_length_1371_cov_224", "Ntome_NODE_23004_length_983_cov_98"), tabChuvstab095=c("Nsylvestris_NODE_15514_length_1500_cov_222", "Ntome_NODE_17155_length_1434_cov_311", "Ntome_NODE_3232_length_3609_cov_134", "Ntome_NODE_4642_length_3174_cov_75"))

png(filename="upset_ltvsdk_85_1-15-23.png", width=8, height=4, units="in", res=300)
upset(fromList(listInput85), order.by=c("degree", "freq"), text.scale=1.5)
dev.off()
