library(ggplot2)
library(viridis)
setwd("/Users/elizabeth.mccarth02//Dropbox/Nicotiana_DE_2019_Nano/ENA_Nano_min800_assemblies_Oct2019")

#all DE genes with logFC>|2| from 60% dev
read.csv("all_logFC_log2_60_1-17-23.csv")->data
data<-data.frame(data[,1:9]) 
data$comp<-as.factor(data$comp)
attach(data)

#all DE genes with logFC>|2| from 85% dev
read.csv("all_logFC_log2_85_1-17-23.csv")->data1
data1<-data.frame(data1[,1:9]) 
data1$comp<-as.factor(data1$comp)
attach(data1)

#all DE genes with logFC>|2| from 95% dev
read.csv("all_logFC_log2_95_1-17-23.csv")->data2
data2<-data.frame(data2[,1:9]) 
data2$comp<-as.factor(data2$comp)
attach(data2)


#anth DE genes with logFC>|2| from 60% dev, added column with gene homeolog name
read.csv("anth_logFC_log2_60_1-17-23.csv")->data3
data3<-data.frame(data3[,1:10]) 
data3$comp<-as.factor(data3$comp)
data3$Gene<-as.factor(data3$Gene)
attach(data3)

#anth DE genes with logFC>|2| from 85% dev, added column with gene homeolog name
read.csv("anth_logFC_log2_85_1-17-23.csv")->data4
data4<-data.frame(data4[,1:10]) 
data4$comp<-as.factor(data4$comp)
data4$Gene<-as.factor(data4$Gene)
attach(data4)

#anth DE genes with logFC>|2| from 95% dev, added column with gene homeolog name
read.csv("anth_logFC_log2_95_1-17-23.csv")->data5
data5<-data.frame(data5[,1:10]) 
data5$comp<-as.factor(data5$comp)
data5$Gene<-as.factor(data5$Gene)
attach(data5)


#Plot empty violin plots (all DE genes) with strip plot overlaid (anth DE genes)

#60% dev
png(filename="violin_anth_60_1-17-23.png", width=10, height=6, units="in", res=300)
#empty violin with jitter stripchart with diff colors for genes 60, sylv transparent, tomf bold
ggplot(data, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data3, aes(x=comp, y=logFC, color=Gene, alpha=Gene), position=position_jitter(0.2), cex=3) + 
  scale_color_manual(values=c("#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#000004FF", "#8C2981FF", "#C43C75FF", "#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FE9F6DFF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sFLS", "sDFR", "sANS", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + 
  scale_alpha_manual(values=c(0.4,0.4,0.4,0.4,0.4,0.4,0.4,1,1,1,1,1,1,1,1,1), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sFLS", "sDFR", "sANS", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic")) + labs(x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs tomf", " tab095 vs sylv", " tabChu vs sylv", " QM24 vs sylv", " QM25 vs sylv", " tab095 vs tomf", " tabChu vs tomf", " QM24 vs tomf", " QM25 vs tomf", " QM24 vs tab095", " QM24 vs tabChu", " QM25 vs tab095", " QM25 vs tabChu", " tab095 vs tabChu", " QM24 vs QM25"))
dev.off()

#85% dev
png(filename="violin_anth_85_1-17-23.png", width=10, height=6, units="in", res=300)
#empty violin with jitter stripchart with diff colors for genes 85, sylv transparent, tomf bold
ggplot(data1, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data4, aes(x=comp, y=logFC, color=Gene, alpha=Gene), position=position_jitter(0.2), cex=3) + 
  scale_color_manual(values=c("#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#3F4788FF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FE9F6DFF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + 
  scale_alpha_manual(values=c(0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,1,1,1,1,1,1,1,1,1), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5)) + labs(title="85% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs tomf", " tab095 vs sylv", " tabChu vs sylv", " QM24 vs sylv", " QM25 vs sylv", " tab095 vs tomf", " tabChu vs tomf", " QM24 vs tomf", " QM25 vs tomf", " QM24 vs tab095", " QM24 vs tabChu", " QM25 vs tab095", " QM25 vs tabChu", " tab095 vs tabChu", " QM24 vs QM25"))
dev.off()

#95% dev
png(filename="violin_anth_95_1-17-23.png", width=10, height=6, units="in", res=300)
#empty violin with jitter stripchart with diff colors for genes 95, sylv transparent, tomf bold
ggplot(data2, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data5, aes(x=comp, y=logFC, color=Gene, alpha=Gene), position=position_jitter(0.2), cex=3) + 
  scale_color_manual(values=c("#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#3F4788FF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FE9F6DFF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + 
  scale_alpha_manual(values=c(0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,1,1,1,1,1,1,1,1,1), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5)) + labs(title="95% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs tomf", " tab095 vs sylv", " tabChu vs sylv", " QM24 vs sylv", " QM25 vs sylv", " tab095 vs tomf", " tabChu vs tomf", " QM24 vs tomf", " QM25 vs tomf", " QM24 vs tab095", " QM24 vs tabChu", " QM25 vs tab095", " QM25 vs tabChu", " tab095 vs tabChu", " QM24 vs QM25"))
dev.off()

#Make plot with 85% and 95% plots with shared legend
library(cowplot)

eightyfiveplot<-ggplot(data1, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data4, aes(x=comp, y=logFC, color=Gene, alpha=Gene), position=position_jitter(0.2), cex=3) + 
  scale_color_manual(values=c("#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#3F4788FF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FE9F6DFF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + 
  scale_alpha_manual(values=c(0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,1,1,1,1,1,1,1,1,1), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5), plot.margin=margin(0.25, 0.25, 0.5, 0.25, "in")) + labs(title="85% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs tomf", " tab095 vs sylv", " tabChu vs sylv", " QM24 vs sylv", " QM25 vs sylv", " tab095 vs tomf", " tabChu vs tomf", " QM24 vs tomf", " QM25 vs tomf", " QM24 vs tab095", " QM24 vs tabChu", " QM25 vs tab095", " QM25 vs tabChu", " tab095 vs tabChu", " QM24 vs QM25"))

ninetyfiveplot<-ggplot(data2, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data5, aes(x=comp, y=logFC, color=Gene, alpha=Gene), position=position_jitter(0.2), cex=3) + 
  scale_color_manual(values=c("#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#3F4788FF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF", "#FE9F6DFF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + 
  scale_alpha_manual(values=c(0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,0.4,1,1,1,1,1,1,1,1,1), breaks=c("sCHS", "sCHI", "sF3H", "sF3'H", "sF3'5'H", "sFLS", "sDFR", "sANS", "sAN1", "tCHS", "tCHI", "tF3H", "tF3'H", "tFLS", "tDFR", "tANS", "tAN1", "tAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5), plot.margin=margin(0, 0.25, 0.25, 0.25, "in")) + labs(title="95% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs tomf", " tab095 vs sylv", " tabChu vs sylv", " QM24 vs sylv", " QM25 vs sylv", " tab095 vs tomf", " tabChu vs tomf", " QM24 vs tomf", " QM25 vs tomf", " QM24 vs tab095", " QM24 vs tabChu", " QM25 vs tab095", " QM25 vs tabChu", " tab095 vs tabChu", " QM24 vs QM25"))

#plot both plots in a column without legends
FIG<-plot_grid(eightyfiveplot + theme(legend.position="none"), ninetyfiveplot + theme(legend.position="none"), labels=c("A", "B"), ncol=1)

#extract legend from FLSDFR plot
legend<-get_legend(ninetyfiveplot + theme(legend.box.margin=margin(0,0,0,0)))

#plot all three plots with shared legend at right
png(filename="violin_anth_85_95_plot_1-17-23.png", width=12, height=15, units="in", res=300)
plot_grid(FIG, legend, rel_widths=c(5, 1))
dev.off()