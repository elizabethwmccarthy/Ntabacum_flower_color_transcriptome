library(ggplot2)
setwd("/Users/elizabeth.mccarth02//Dropbox/Nicotiana_DE_2019_Nano/ENA_Nano_min800_assemblies_Oct2019")

#progenitor ratios and polyploid homeolog ratios for anth genes for 60, 85, and 95 dev points
read.csv("anth_cis-trans_plot_60_85_95_1-16-23.csv")->data
data<-data.frame(data[,1:7]) 
data$Species<-as.factor(data$Species)
data$dev<-as.factor(data$dev)
data$gene<-as.factor(data$gene)
attach(data)

#progenitor ratios and polyploid homeolog ratios for all homeologs for 60, 85, 95 dev points
read.csv("all_homeolog_cis-trans_plot_60_85_95_1-16-23.csv")->data2
data2<-data.frame(data2[,1:9]) 
data2$Ploidy<-as.factor(data2$Ploidy)
data2$Species<-as.factor(data2$Species)
data2$dev<-as.factor(data2$dev)
data2$sylvgeneID<-as.factor(data2$sylvgeneID)
data2$tomfgeneID<-as.factor(data2$tomfgeneID)
attach(data2)


#put figs together in a grid
library(cowplot)

Geneplot<-ggplot(data2, aes(x=prog_ratio, y=poly_homeolog_ratio, shape=as.factor(dev))) + geom_point(color="gray", alpha=0.2, size=1) + theme_classic() + xlim(0, 1) + ylim(0, 1) +
  geom_point(data=data, aes(x=prog_ratio, y=poly_homeolog_ratio, shape=as.factor(dev)), color="white", alpha=0.7, size=3.5) +
  geom_point(data=data, aes(x=prog_ratio, y=poly_homeolog_ratio, color=as.factor(gene), shape=as.factor(dev)), alpha=0.7, size=2.5) + scale_color_manual(values=c("goldenrod1", "#FDE725FF", "#8AD547FF", "#2FB47CFF", "#238A8DFF", "#3F4788FF", "#000004FF", "#8C2981FF", "#C43C75FF", "#E85362FF"), breaks=c("CHS1", "CHS2", "CHI", "F3H", "F3'H", "F3'5'H", "FLS", "DFR", "ANS", "AN1"), name="Gene", guide=guide_legend(label.theme=element_text(angle=0, face="italic", size=10))) + scale_shape_discrete(name="Dev point") +
  geom_hline(yintercept=c(0.5), linetype=c("solid"), color="black") + geom_abline(slope=1, intercept=0, linetype=c("solid"), color="black") + geom_vline(xintercept=c(0.5), linetype=c("dashed"), color="black") +
  labs(x="Progenitor ratio (% sylv)", y="Polyploid homeolog ratio (% sylv)") + theme(axis.title=element_text(size=12), axis.text=element_text(size=11), legend.title=element_text(size=10), legend.text=element_text(size=9))

Speciesplot<-ggplot(data2, aes(x=prog_ratio, y=poly_homeolog_ratio, shape=as.factor(dev))) + geom_point(color="gray", alpha=0.2, size=1) + theme_classic() + xlim(0, 1) + ylim(0, 1) +
  geom_point(data=data, aes(x=prog_ratio, y=poly_homeolog_ratio, shape=as.factor(dev)), color="white", alpha=0.7, size=3.5) +
  geom_point(data=data, aes(x=prog_ratio, y=poly_homeolog_ratio, color=as.factor(Species), shape=as.factor(dev)), alpha=0.7, size=2.5) + scale_color_manual(values=c("magenta", "darkmagenta", "orange", "cyan"), labels=c("QM24", "QM25", "tab095", "tabChu"), name="Accession") + scale_shape_discrete(name="Dev point") +
  geom_hline(yintercept=c(0.5), linetype=c("solid"), color="black") + geom_abline(slope=1, intercept=0, linetype=c("solid"), color="black") + geom_vline(xintercept=c(0.5), linetype=c("dashed"), color="black") +
  labs(x="Progenitor ratio (% sylv)", y="Polyploid homeolog ratio (% sylv)") + theme(axis.title=element_text(size=12), axis.text=element_text(size=11), legend.title=element_text(size=10), legend.text=element_text(size=9))

#plot both plots in a column with legends
png(filename="anth_overlay_on_all_homeolog_cis-trans_60_85_95_polys_1-16-23.png", width=13, height=4.5, units="in", res=300)
plot_grid(Geneplot, Speciesplot, labels=c("A", "B"), nrow=1, rel_widths=c(1,1))
dev.off()



#pull out number of genes with bias toward sylv (prog ratio>0.5) and toward tomf (prog ratio<0.5) from anth genes and one-to-one homeologs
table(data$prog_ratio_bias)
table(data2$prog_ratio_bias)

#run goodness of fit chi squared test to test whether anth genes and one-to-one homeologs have equal number of bias toward sylv vs bias toward tomf genes
anth_observed<-c(12, 108)
anth_expected<-c(0.5, 0.5)

hom_observed<-c(5604, 5280)
hom_expected<-c(0.5, 0.5)

chisq.test(x=anth_observed, p=anth_expected)

chisq.test(x=hom_observed, p=hom_expected)

#run goodness of fit chi squared test on homeolog ratios from anth genes and one-to-one homeologs to see if similar biases as prog ratios are present
table(data$homeolog_ratio_bias)
table(data2$homeolog_ratio_bias)

anth_hom_observed<-c(36, 84)
anth_hom_expected<-c(0.5, 0.5)

hom_hom_observed<-c(5545, 5339)
hom_hom_expected<-c(0.5, 0.5)

chisq.test(x=anth_hom_observed, p=anth_hom_expected)

chisq.test(x=hom_hom_observed, p=hom_hom_expected)


