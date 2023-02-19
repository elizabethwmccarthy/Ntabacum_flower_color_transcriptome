library(ggplot2)
setwd("/Users/elizabeth.mccarth02//Dropbox/Nicotiana_DE_2019_Nano/ENA_Nano_min800_assemblies_Oct2019")


#TMMsum values for each anth gene

#summed TMM values for both homeologs for DFR (no sDFR for tabs) at 60, 85, and 95 for all accessions
read.csv("DFR_nosDFR_tabs_TMMsum_60_85_95_1-17-23.csv")->DFRnosDFR
DFRnosDFR<-data.frame(DFRnosDFR[,1:4])
DFRnosDFR$Dev<-as.factor(DFRnosDFR$Dev)
DFRnosDFR$Species<-as.factor(DFRnosDFR$Species)
DFRnosDFR$Abbrev<-as.factor(DFRnosDFR$Abbrev)
attach(DFRnosDFR)

#median values for summed TMM values for DFR (no sDFR for tabs)
read.csv("DFR_nosDFR_tabs_TMMsum_60_85_95_1-17-23.csv")->DFRnosDFRsummary
DFRnosDFRsummary<-data.frame(DFRnosDFRsummary[1:18,5:7]) 
DFRnosDFRsummary$Dev.1<-as.factor(DFRnosDFRsummary$Dev.1)
DFRnosDFRsummary$Species.1<-as.factor(DFRnosDFRsummary$Species.1)
attach(DFRnosDFRsummary)


#summed TMM values for both homeologs for FLS at 60, 85, and 95 for all accessions
read.csv("FLS_TMMsum_60_85_95_1-17-23.csv")->FLS
FLS<-data.frame(FLS[,1:4]) 
FLS$Dev<-as.factor(FLS$Dev)
FLS$Species<-as.factor(FLS$Species)
FLS$Abbrev<-as.factor(FLS$Abbrev)
attach(FLS)

#Mean and median values for summed FLS TMM values
read.csv("FLS_TMMsum_60_85_95_1-17-23.csv")->FLSsummary
FLSsummary<-data.frame(FLSsummary[1:18,5:7]) 
FLSsummary$Dev.1<-as.factor(FLSsummary$Dev.1)
FLSsummary$Species.1<-as.factor(FLSsummary$Species.1)
attach(FLSsummary)


#summed TMM values for both homeologs for ANS at 60, 85, and 95 for all accessions
read.csv("ANS_TMMsum_60_85_95_1-17-23.csv")->ANS
ANS<-data.frame(ANS[,1:4])
ANS$Dev<-as.factor(ANS$Dev)
ANS$Species<-as.factor(ANS$Species)
ANS$Abbrev<-as.factor(ANS$Abbrev)
attach(ANS)

#Mean and median values for summed ANS TMM values
read.csv("ANS_TMMsum_60_85_95_1-17-23.csv")->ANSsummary
ANSsummary<-data.frame(ANSsummary[1:18,5:7]) 
ANSsummary$Dev.1<-as.factor(ANSsummary$Dev.1)
ANSsummary$Species.1<-as.factor(ANSsummary$Species.1)
attach(ANSsummary)


#summed TMM values for both homeologs for AN1 at 60, 85, and 95 for all accessions
read.csv("AN1_TMMsum_60_85_95_1-17-23.csv")->AN1
AN1<-data.frame(AN1[,1:4])
AN1$Dev<-as.factor(AN1$Dev)
AN1$Species<-as.factor(AN1$Species)
AN1$Abbrev<-as.factor(AN1$Abbrev)
attach(AN1)

#Mean and median values for summed AN1 TMM values
read.csv("AN1_TMMsum_60_85_95_1-17-23.csv")->AN1summary
AN1summary<-data.frame(AN1summary[1:18,5:7]) 
AN1summary$Dev.1<-as.factor(AN1summary$Dev.1)
AN1summary$Species.1<-as.factor(AN1summary$Species.1)
attach(AN1summary)


#summed TMM values for both homeologs for AN2 at 60, 85, and 95 for all accessions
read.csv("AN2_TMMsum_60_85_95_1-17-23.csv")->AN2
AN2<-data.frame(AN2[,1:4])
AN2$Dev<-as.factor(AN2$Dev)
AN2$Species<-as.factor(AN2$Species)
AN2$Abbrev<-as.factor(AN2$Abbrev)
attach(AN2)

#Mean and median values for summed AN2 TMM values
read.csv("AN2_TMMsum_60_85_95_1-17-23.csv")->AN2summary
AN2summary<-data.frame(AN2summary[1:18,5:7]) 
AN2summary$Dev.1<-as.factor(AN2summary$Dev.1)
AN2summary$Species.1<-as.factor(AN2summary$Species.1)
attach(AN2summary)


#summed TMM values for both homeologs for CHS (sum of CHS1 and CHS2) at 60, 85, and 95 for all accessions
read.csv("CHS_TMMsum_60_85_95_1-17-23.csv")->CHS
CHS<-data.frame(CHS[,1:4])
CHS$Dev<-as.factor(CHS$Dev)
CHS$Species<-as.factor(CHS$Species)
CHS$Abbrev<-as.factor(CHS$Abbrev)
attach(CHS)

#Mean and median values for summed CHS (sum of CHS1 and CHS2) TMM values
read.csv("CHS_TMMsum_60_85_95_1-17-23.csv")->CHSsummary
CHSsummary<-data.frame(CHSsummary[1:18,5:7]) 
CHSsummary$Dev.1<-as.factor(CHSsummary$Dev.1)
CHSsummary$Species.1<-as.factor(CHSsummary$Species.1)
attach(CHSsummary)


#summed TMM values for both homeologs for CHI at 60, 85, and 95 for all accessions
read.csv("CHI_TMMsum_60_85_95_1-17-23.csv")->CHI
CHI<-data.frame(CHI[,1:4])
CHI$Dev<-as.factor(CHI$Dev)
CHI$Species<-as.factor(CHI$Species)
CHI$Abbrev<-as.factor(CHI$Abbrev)
attach(CHI)

#Mean and median values for summed CHI TMM values
read.csv("CHI_TMMsum_60_85_95_1-17-23.csv")->CHIsummary
CHIsummary<-data.frame(CHIsummary[1:18,5:7]) 
CHIsummary$Dev.1<-as.factor(CHIsummary$Dev.1)
CHIsummary$Species.1<-as.factor(CHIsummary$Species.1)
attach(CHIsummary)


#summed TMM values for both homeologs for F3H at 60, 85, and 95 for all accessions
read.csv("F3H_TMMsum_60_85_95_1-17-23.csv")->F3H
F3H<-data.frame(F3H[,1:4])
F3H$Dev<-as.factor(F3H$Dev)
F3H$Species<-as.factor(F3H$Species)
F3H$Abbrev<-as.factor(F3H$Abbrev)
attach(F3H)

#Mean and median values for summed F3H TMM values
read.csv("F3H_TMMsum_60_85_95_1-17-23.csv")->F3Hsummary
F3Hsummary<-data.frame(F3Hsummary[1:18,5:7]) 
F3Hsummary$Dev.1<-as.factor(F3Hsummary$Dev.1)
F3Hsummary$Species.1<-as.factor(F3Hsummary$Species.1)
attach(F3Hsummary)


#summed TMM values for both homeologs for F3'H at 60, 85, and 95 for all accessions
read.csv("F3pH_TMMsum_60_85_95_1-17-23.csv")->F3pH
F3pH<-data.frame(F3pH[,1:4])
F3pH$Dev<-as.factor(F3pH$Dev)
F3pH$Species<-as.factor(F3pH$Species)
F3pH$Abbrev<-as.factor(F3pH$Abbrev)
attach(F3pH)

#Mean and median values for summed F3'H TMM values
read.csv("F3pH_TMMsum_60_85_95_1-17-23.csv")->F3pHsummary
F3pHsummary<-data.frame(F3pHsummary[1:18,5:7]) 
F3pHsummary$Dev.1<-as.factor(F3pHsummary$Dev.1)
F3pHsummary$Species.1<-as.factor(F3pHsummary$Species.1)
attach(F3pHsummary)


#summed TMM values for both homeologs for F3'5'H at 60, 85, and 95 for all accessions
read.csv("F3p5pH_TMMsum_60_85_95_1-17-23.csv")->F3p5pH
F3p5pH<-data.frame(F3p5pH[,1:4])
F3p5pH$Dev<-as.factor(F3p5pH$Dev)
F3p5pH$Species<-as.factor(F3p5pH$Species)
F3p5pH$Abbrev<-as.factor(F3p5pH$Abbrev)
attach(F3p5pH)

#Mean and median values for summed F3'5'H TMM values
read.csv("F3p5pH_TMMsum_60_85_95_1-17-23.csv")->F3p5pHsummary
F3p5pHsummary<-data.frame(F3p5pHsummary[1:18,5:7]) 
F3p5pHsummary$Dev.1<-as.factor(F3p5pHsummary$Dev.1)
F3p5pHsummary$Species.1<-as.factor(F3p5pHsummary$Species.1)
attach(F3pHsummary)


#ratio of summed TMM values for both homeologs for FLS:F3pH at 60, 85, and 95 for all accessions
read.csv("FLS-F3pH_TMMsum_60_85_95_1-17-23.csv")->FLSF3pH
FLSF3pH<-data.frame(FLSF3pH[,1:4]) 
FLSF3pH$Dev<-as.factor(FLSF3pH$Dev)
FLSF3pH$Species<-as.factor(FLSF3pH$Species)
FLSF3pH$Abbrev<-as.factor(FLSF3pH$Abbrev)
attach(FLSF3pH)

#Mean and median values for FLS:F3pH ratio of summed TMM values
read.csv("FLS-F3pH_TMMsum_60_85_95_1-17-23.csv")->FLSF3pHsummary
FLSF3pHsummary<-data.frame(FLSF3pHsummary[1:18,5:7]) 
FLSF3pHsummary$Dev.1<-as.factor(FLSF3pHsummary$Dev.1)
FLSF3pHsummary$Species.1<-as.factor(FLSF3pHsummary$Species.1)
attach(FLSF3pHsummary)


#ratio of summed TMM values for both homeologs for FLS:DFR no sDFR for tabs at 60, 85, and 95 for all accessions
read.csv("FLS-DFR_TMMsum_60_85_95_1-17-23.csv")->FLSDFRnosDFR
FLSDFRnosDFR<-data.frame(FLSDFRnosDFR[,1:4]) 
FLSDFRnosDFR$Dev<-as.factor(FLSDFRnosDFR$Dev)
FLSDFRnosDFR$Species<-as.factor(FLSDFRnosDFR$Species)
FLSDFRnosDFR$Abbrev<-as.factor(FLSDFRnosDFR$Abbrev)
attach(FLSDFRnosDFR)

#Mean and median values for FLS:DFR no sDFR for tabs ratio of summed TMM values
read.csv("FLS-DFR_TMMsum_60_85_95_1-17-23.csv")->FLSDFRnosDFRsummary
FLSDFRnosDFRsummary<-data.frame(FLSDFRnosDFRsummary[1:18,5:7]) 
FLSDFRnosDFRsummary$Dev.1<-as.factor(FLSDFRnosDFRsummary$Dev.1)
FLSDFRnosDFRsummary$Species.1<-as.factor(FLSDFRnosDFRsummary$Species.1)
attach(FLSDFRnosDFRsummary)


#plot all in a grid
library(cowplot)

CHSplot<-ggplot(CHS, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=CHS, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=CHSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="CHS") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

CHIplot<-ggplot(CHI, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=CHI, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=CHIsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHIsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="CHI") + ylim(0,800) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3Hplot<-ggplot(F3H, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=F3H, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=F3Hsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3Hsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="F3H") + ylim(0,2000) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3pHplot<-ggplot(F3pH, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=F3pH, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=F3pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="F3'H") + ylim(0,250) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3p5pHplot<-ggplot(F3p5pH, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=F3p5pH, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=F3p5pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3p5pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="F3'5'H") + ylim(0,6) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

FLSF3pHplot<-ggplot(FLSF3pH, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=FLSF3pH, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=FLSF3pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=FLSF3pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="FLS:F3'H") + ylim(0,8) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

FLSplot<-ggplot(FLS, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=FLS, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=FLSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=FLSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="FLS") + ylim(0,800) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRplot<-ggplot(DFRnosDFR, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRnosDFR, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=DFRnosDFRsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=DFRnosDFRsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="DFR") +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

FLSDFRplot<-ggplot(FLSDFRnosDFR, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=FLSDFRnosDFR, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=FLSDFRnosDFRsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=FLSDFRnosDFRsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="FLS:DFR") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

ANSplot<-ggplot(ANS, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=ANS, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=ANSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=ANSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="ANS") +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

AN1plot<-ggplot(AN1, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=AN1, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=AN1summary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=AN1summary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="AN1") + ylim(0,200) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

AN2plot<-ggplot(AN2, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=AN2, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=AN2summary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=AN2summary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)", title="AN2") +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))


#plot all plots in a grid without legends
FIG<-plot_grid(CHSplot + theme(legend.position="none"), CHIplot + theme(legend.position="none"), F3Hplot + theme(legend.position="none"), F3pHplot + theme(legend.position="none"), F3p5pHplot + theme(legend.position="none"), FLSF3pHplot + theme(legend.position="none"), FLSplot + theme(legend.position="none"), DFRplot + theme(legend.position="none"), FLSDFRplot + theme(legend.position="none"), ANSplot + theme(legend.position="none"), AN1plot + theme(legend.position="none"), AN2plot + theme(legend.position="none"), labels=c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"), nrow=4, ncol=3)

#extract legend from FLSDFR plot
legend<-get_legend(DFRplot + theme(legend.box.margin=margin(0,0,0,0)))

#plot all plots with shared legend at right
png(filename="anth_gene_TMMsum_60_85_95_plot_grid_1-17-23.png", width=11, height=11, units="in", res=300)
plot_grid(FIG, legend, rel_widths=c(3, 0.3))
dev.off()




#Mean and median values for FLS:DFR no sDFR for tabs ratio of summed TMM values
read.csv("FLS-DFR_TMMsum_60_85_95_1-17-23.csv")->FLSDFRnosDFRsummary
FLSDFRnosDFRsummary<-data.frame(FLSDFRnosDFRsummary[1:18,5:7]) 
FLSDFRnosDFRsummary$Dev.1<-as.factor(FLSDFRnosDFRsummary$Dev.1)
FLSDFRnosDFRsummary$Species.1<-as.factor(FLSDFRnosDFRsummary$Species.1)
attach(FLSDFRnosDFRsummary)




#stripplots for %sylv data for all anth genes

#% sylv homeolog for DFR at 60, 85, and 95 for all accessions
read.csv("DFR_percsylv_60_85_95_1-17-23.csv")->DFRpercsylv
DFRpercsylv<-data.frame(DFRpercsylv[,1:4]) 
DFRpercsylv$Dev<-as.factor(DFRpercsylv$Dev)
DFRpercsylv$Species<-as.factor(DFRpercsylv$Species)
DFRpercsylv$Abbrev<-as.factor(DFRpercsylv$Abbrev)
attach(DFRpercsylv)

#Median values for % sylv of DFR plus prog ratio
read.csv("DFR_percsylv_60_85_95_1-17-23.csv")->DFRpercsylvsummary
DFRpercsylvsummary<-data.frame(DFRpercsylvsummary[1:21,5:7]) 
DFRpercsylvsummary$Dev.1<-as.factor(DFRpercsylvsummary$Dev.1)
DFRpercsylvsummary$Species.1<-as.factor(DFRpercsylvsummary$Species.1)
attach(DFRpercsylvsummary)


#% sylv homeolog for FLS at 60, 85, and 95 for all accessions
read.csv("FLS_percsylv_60_85_95_1-17-23.csv")->FLSpercsylv
FLSpercsylv<-data.frame(FLSpercsylv[,1:4]) 
FLSpercsylv$Dev<-as.factor(FLSpercsylv$Dev)
FLSpercsylv$Species<-as.factor(FLSpercsylv$Species)
FLSpercsylv$Abbrev<-as.factor(FLSpercsylv$Abbrev)
attach(FLSpercsylv)

#Median values for % sylv of FLS plus prog ratio
read.csv("FLS_percsylv_60_85_95_1-17-23.csv")->FLSpercsylvsummary
FLSpercsylvsummary<-data.frame(FLSpercsylvsummary[1:21,5:7]) 
FLSpercsylvsummary$Dev.1<-as.factor(FLSpercsylvsummary$Dev.1)
FLSpercsylvsummary$Species.1<-as.factor(FLSpercsylvsummary$Species.1)
attach(FLSpercsylvsummary)


#% sylv homeolog for ANS at 60, 85, and 95 for all accessions
read.csv("ANS_percsylv_60_85_95_1-17-23.csv")->ANSpercsylv
ANSpercsylv<-data.frame(ANSpercsylv[,1:4]) 
ANSpercsylv$Dev<-as.factor(ANSpercsylv$Dev)
ANSpercsylv$Species<-as.factor(ANSpercsylv$Species)
ANSpercsylv$Abbrev<-as.factor(ANSpercsylv$Abbrev)
attach(ANSpercsylv)

#Median values for % sylv of ANS plus prog ratio
read.csv("ANS_percsylv_60_85_95_1-17-23.csv")->ANSpercsylvsummary
ANSpercsylvsummary<-data.frame(ANSpercsylvsummary[1:21,5:7]) 
ANSpercsylvsummary$Dev.1<-as.factor(ANSpercsylvsummary$Dev.1)
ANSpercsylvsummary$Species.1<-as.factor(ANSpercsylvsummary$Species.1)
attach(ANSpercsylvsummary)


#% sylv homeolog for AN1 at 60, 85, and 95 for all accessions
read.csv("AN1_percsylv_60_85_95_1-17-23.csv")->AN1percsylv
AN1percsylv<-data.frame(AN1percsylv[,1:4]) 
AN1percsylv$Dev<-as.factor(AN1percsylv$Dev)
AN1percsylv$Species<-as.factor(AN1percsylv$Species)
AN1percsylv$Abbrev<-as.factor(AN1percsylv$Abbrev)
attach(AN1percsylv)

#Median values for % sylv of AN1 plus prog ratio
read.csv("AN1_percsylv_60_85_95_1-17-23.csv")->AN1percsylvsummary
AN1percsylvsummary<-data.frame(AN1percsylvsummary[1:21,5:7]) 
AN1percsylvsummary$Dev.1<-as.factor(AN1percsylvsummary$Dev.1)
AN1percsylvsummary$Species.1<-as.factor(AN1percsylvsummary$Species.1)
attach(AN1percsylvsummary)


#% sylv homeolog for CHS1 at 60, 85, and 95 for all accessions
read.csv("CHS1_percsylv_60_85_95_1-17-23.csv")->CHS1percsylv
CHS1percsylv<-data.frame(CHS1percsylv[,1:4]) 
CHS1percsylv$Dev<-as.factor(CHS1percsylv$Dev)
CHS1percsylv$Species<-as.factor(CHS1percsylv$Species)
CHS1percsylv$Abbrev<-as.factor(CHS1percsylv$Abbrev)
attach(CHS1percsylv)

#Median values for % sylv of CHS1 plus prog ratiCHS1_percsylv_60_85_95_1-17-23CHS1_perc_sylv_median_60_85_95_1-10-22.csv")->CHS1percsylvsummary
read.csv("CHS1_percsylv_60_85_95_1-17-23.csv")->CHS1percsylvsummary
CHS1percsylvsummary<-data.frame(CHS1percsylvsummary[1:21,5:7]) 
CHS1percsylvsummary$Dev.1<-as.factor(CHS1percsylvsummary$Dev.1)
CHS1percsylvsummary$Species.1<-as.factor(CHS1percsylvsummary$Species.1)
attach(CHS1percsylvsummary)


#% sylv homeolog for CHS2 at 60, 85, and 95 for all accessions
read.csv("CHS2_percsylv_60_85_95_1-17-23.csv")->CHS2percsylv
CHS2percsylv<-data.frame(CHS2percsylv[,1:4]) 
CHS2percsylv$Dev<-as.factor(CHS2percsylv$Dev)
CHS2percsylv$Species<-as.factor(CHS2percsylv$Species)
CHS2percsylv$Abbrev<-as.factor(CHS2percsylv$Abbrev)
attach(CHS2percsylv)

#Median values for % sylv of CHS2 plus prog ratio
read.csv("CHS2_percsylv_60_85_95_1-17-23.csv")->CHS2percsylvsummary
CHS2percsylvsummary<-data.frame(CHS2percsylvsummary[1:21,5:7]) 
CHS2percsylvsummary$Dev.1<-as.factor(CHS2percsylvsummary$Dev.1)
CHS2percsylvsummary$Species.1<-as.factor(CHS2percsylvsummary$Species.1)
attach(CHS2percsylvsummary)


#% sylv homeolog for CHI at 60, 85, and 95 for all accessions
read.csv("CHI_percsylv_60_85_95_1-17-23.csv")->CHIpercsylv
CHIpercsylv<-data.frame(CHIpercsylv[,1:4]) 
CHIpercsylv$Dev<-as.factor(CHIpercsylv$Dev)
CHIpercsylv$Species<-as.factor(CHIpercsylv$Species)
CHIpercsylv$Abbrev<-as.factor(CHIpercsylv$Abbrev)
attach(CHIpercsylv)

#Median values for % sylv of CHI plus prog ratio
read.csv("CHI_percsylv_60_85_95_1-17-23.csv")->CHIpercsylvsummary
CHIpercsylvsummary<-data.frame(CHIpercsylvsummary[1:21,5:7]) 
CHIpercsylvsummary$Dev.1<-as.factor(CHIpercsylvsummary$Dev.1)
CHIpercsylvsummary$Species.1<-as.factor(CHIpercsylvsummary$Species.1)
attach(CHIpercsylvsummary)


#% sylv homeolog for F3H at 60, 85, and 95 for all accessions
read.csv("F3H_percsylv_60_85_95_1-17-23.csv")->F3Hpercsylv
F3Hpercsylv<-data.frame(F3Hpercsylv[,1:4]) 
F3Hpercsylv$Dev<-as.factor(F3Hpercsylv$Dev)
F3Hpercsylv$Species<-as.factor(F3Hpercsylv$Species)
F3Hpercsylv$Abbrev<-as.factor(F3Hpercsylv$Abbrev)
attach(F3Hpercsylv)

#Median values for % sylv of F3H plus prog ratio
read.csv("F3H_percsylv_60_85_95_1-17-23.csv")->F3Hpercsylvsummary
F3Hpercsylvsummary<-data.frame(F3Hpercsylvsummary[1:21,5:7]) 
F3Hpercsylvsummary$Dev.1<-as.factor(F3Hpercsylvsummary$Dev.1)
F3Hpercsylvsummary$Species.1<-as.factor(F3Hpercsylvsummary$Species.1)
attach(F3Hpercsylvsummary)


#% sylv homeolog for F3'H at 60, 85, and 95 for all accessions
read.csv("F3pH_percsylv_60_85_95_1-17-23.csv")->F3pHpercsylv
F3pHpercsylv<-data.frame(F3pHpercsylv[,1:4]) 
F3pHpercsylv$Dev<-as.factor(F3pHpercsylv$Dev)
F3pHpercsylv$Species<-as.factor(F3pHpercsylv$Species)
F3pHpercsylv$Abbrev<-as.factor(F3pHpercsylv$Abbrev)
attach(F3pHpercsylv)

#Median values for % sylv of F3'H plus prog ratio
read.csv("F3pH_percsylv_60_85_95_1-17-23.csv")->F3pHpercsylvsummary
F3pHpercsylvsummary<-data.frame(F3pHpercsylvsummary[1:21,5:7]) 
F3pHpercsylvsummary$Dev.1<-as.factor(F3pHpercsylvsummary$Dev.1)
F3pHpercsylvsummary$Species.1<-as.factor(F3pHpercsylvsummary$Species.1)
attach(F3pHpercsylvsummary)


#% sylv homeolog for F3'5'H at 60, 85, and 95 for all accessions
read.csv("F3p5pH_percsylv_60_85_95_1-17-23.csv")->F3p5pHpercsylv
F3p5pHpercsylv<-data.frame(F3p5pHpercsylv[,1:4]) 
F3p5pHpercsylv$Dev<-as.factor(F3p5pHpercsylv$Dev)
F3p5pHpercsylv$Species<-as.factor(F3p5pHpercsylv$Species)
F3p5pHpercsylv$Abbrev<-as.factor(F3p5pHpercsylv$Abbrev)
attach(F3p5pHpercsylv)

#Median values for % sylv of F3'5'H plus prog ratio
read.csv("F3p5pH_percsylv_60_85_95_1-17-23.csv")->F3p5pHpercsylvsummary
F3p5pHpercsylvsummary<-data.frame(F3p5pHpercsylvsummary[1:21,5:7]) 
F3p5pHpercsylvsummary$Dev.1<-as.factor(F3p5pHpercsylvsummary$Dev.1)
F3p5pHpercsylvsummary$Species.1<-as.factor(F3p5pHpercsylvsummary$Species.1)
attach(F3p5pHpercsylvsummary)


#deviations from 50% sylv and prog ratios for all homeologs
read.csv("deviations_Ntab_all_homeologs_60_85_95_1-17-23.csv")->data
data<-data.frame(data[,1:5]) 
data$Ploidy<-as.factor(data$Ploidy)
data$Species<-as.factor(data$Species)
data$Dev<-as.factor(data$Dev)
attach(data)

#test whether synth and nat polyploids have significantly different deviation from 50% sylv or the prog ratio
wilcox.test(Dev50~Ploidy, data=data)
wilcox.test(Devprog~Ploidy, data=data)

#deviations from 50% sylv and prog ratios for anth genes
read.csv("deviations_anth_60_85_95_1-19-23.csv")->anthdev
anthdev<-data.frame(anthdev[,1:7]) 
anthdev$Ploidy<-as.factor(anthdev$Ploidy)
anthdev$Species<-as.factor(anthdev$Species)
anthdev$Dev<-as.factor(anthdev$Dev)
attach(anthdev)

read.csv("deviations_anth_medians_60_85_95_1-20-23.csv")->anthdevmedians
anthdevmedians<-data.frame(anthdevmedians[,1:3]) 
anthdevmedians$Ploidy<-as.factor(anthdevmedians$Ploidy)
attach(anthdevmedians)

#test whether synth and nat polyploids have significantly different deviation from 50% sylv or the prog ratio for anth genes
wilcox.test(Dev50~Ploidy, data=anthdev)
wilcox.test(Devprog~Ploidy, data=anthdev)

ggplot(anthdev, aes(x=Ploidy, y=Dev50)) + theme_classic() + geom_jitter(data=anthdev, aes(x=Ploidy, y=Dev50, color=Ploidy, shape=Ploidy), alpha=0.8, position=position_jitter(0.1), cex=2) +
  scale_shape_manual(values=c(16, 16)) + labs(x="Ploidy", y="Deviation from equal expression") + scale_x_discrete(labels=c("synthetic", "natural")) + scale_color_manual(values=c("coral", "royalblue2")) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11)) +
  geom_point(data=anthdevmedians, aes(x=Ploidy, y=Dev50), color="white", pch=18, size=5) + geom_point(data=anthdevmedians, aes(x=Ploidy, y=Dev50), color="black", pch=18, size=4)

ggplot(anthdev, aes(x=Ploidy, y=Devprog)) + theme_classic() + geom_jitter(data=anthdev, aes(x=Ploidy, y=Devprog, color=Ploidy, shape=Ploidy), alpha=0.8, position=position_jitter(0.1), cex=2) +
  scale_shape_manual(values=c(16, 16)) + labs(x="Ploidy", y="Deviation from progenitor ratio") + scale_x_discrete(labels=c("synthetic", "natural")) + scale_color_manual(values=c("coral", "royalblue2")) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11)) +
  geom_point(data=anthdevmedians, aes(x=Ploidy, y=Devprog), color="white", pch=18, size=5) + geom_point(data=anthdevmedians, aes(x=Ploidy, y=Devprog), color="black", pch=18, size=4) + ylim(0,1)


#plot all %sylv plots in a grid
library(cowplot)

CHS1sylvplot<-ggplot(CHS1percsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=CHS1percsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=CHS1percsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHS1percsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="CHS1") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

CHS2sylvplot<-ggplot(CHS2percsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=CHS2percsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=CHS2percsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHS2percsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="CHS2") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

CHIsylvplot<-ggplot(CHIpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=CHIpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=CHIpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHIpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="CHI") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3Hsylvplot<-ggplot(F3Hpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=F3Hpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=F3Hpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3Hpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="F3H") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3pHsylvplot<-ggplot(F3pHpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=F3pHpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=F3pHpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3pHpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="F3'H") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3p5pHsylvplot<-ggplot(F3p5pHpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=F3p5pHpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=F3p5pHpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3p5pHpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="F3'5'H") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

FLSsylvplot<-ggplot(FLSpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=FLSpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=FLSpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=FLSpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="FLS") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRsylvplot<-ggplot(DFRpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=DFRpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=DFRpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=DFRpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="DFR") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

ANSsylvplot<-ggplot(ANSpercsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=ANSpercsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=ANSpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=ANSpercsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="ANS") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

AN1sylvplot<-ggplot(AN1percsylv, aes(x=Dev, y=percsylv)) + theme_classic() + geom_jitter(data=AN1percsylv, aes(x=Dev, y=percsylv, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("black", "magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6,0.6)) + stat_summary(data=AN1percsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=AN1percsylvsummary, aes(x=Dev.1, y=percsylv.1, group=Species.1, color=Species.1), linetype="dotted", size=0.5) + ylim(0,1) +
  labs(x="Developmental timepoint (% anthesis)", y="% sylv transcript accumulation (TMM)", title="AN1") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

Dev50plot<-ggplot(data, aes(x=Ploidy, y=Dev50, fill=Ploidy)) + theme_classic() + geom_boxplot(data=data, aes(x=Ploidy, y=Dev50, fill=Ploidy)) +
  scale_fill_manual(values=c("coral1", "royalblue1")) + labs(x="Polyploids", y="Deviation from equal expression") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in")) +
  scale_x_discrete(labels=c("synthetic", "natural"))

Devprogplot<-ggplot(data, aes(x=Ploidy, y=Devprog, fill=Ploidy)) + theme_classic() + geom_boxplot(data=data, aes(x=Ploidy, y=Devprog, fill=Ploidy)) +
  scale_fill_manual(values=c("coral1", "royalblue1")) + labs(x="Polyploids", y="Deviation from progenitor ratio") + 
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in")) +
  scale_x_discrete(labels=c("synthetic", "natural"))

Anthdev50plot<-ggplot(anthdev, aes(x=Ploidy, y=Dev50)) + theme_classic() + geom_jitter(data=anthdev, aes(x=Ploidy, y=Dev50, color=Ploidy, shape=Ploidy), alpha=0.8, position=position_jitter(0.1), cex=2) +
  scale_shape_manual(values=c(16, 16)) + labs(x="Polyploids", y="Deviation from equal expression") + scale_x_discrete(labels=c("synthetic", "natural")) + scale_color_manual(values=c("coral", "royalblue2")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=11), legend.text=element_text(size=10), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in")) +
  geom_point(data=anthdevmedians, aes(x=Ploidy, y=Dev50), color="white", pch=18, size=5) + geom_point(data=anthdevmedians, aes(x=Ploidy, y=Dev50), color="black", pch=18, size=4)

Anthdevprogplot<-ggplot(anthdev, aes(x=Ploidy, y=Devprog)) + theme_classic() + geom_jitter(data=anthdev, aes(x=Ploidy, y=Devprog, color=Ploidy, shape=Ploidy), alpha=0.8, position=position_jitter(0.1), cex=2) +
  scale_shape_manual(values=c(16, 16)) + labs(x="Polyploids", y="Deviation from progenitor ratio") + scale_x_discrete(labels=c("synthetic", "natural")) + scale_color_manual(values=c("coral", "royalblue2")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=11), legend.text=element_text(size=10), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in")) +
  geom_point(data=anthdevmedians, aes(x=Ploidy, y=Devprog), color="white", pch=18, size=5) + geom_point(data=anthdevmedians, aes(x=Ploidy, y=Devprog), color="black", pch=18, size=4) + ylim(0,1)

#plot dev50 plots together
FIGdev50<-plot_grid(Anthdev50plot + theme(legend.position="none"), Dev50plot + theme(legend.position="none"), labels=c("K", "L"), nrow=1, rel_widths=c(1,1))

#plot devprog plots together
FIGdevprog<-plot_grid(Anthdevprogplot + theme(legend.position="none"), Devprogplot + theme(legend.position="none"), labels=c("M", "N"), nrow=1, rel_widths=c(1,1))

#plot all plots in a grid without legends
FIGsylv<-plot_grid(CHS1sylvplot + theme(legend.position="none"), CHS2sylvplot + theme(legend.position="none"), CHIsylvplot + theme(legend.position="none"), F3Hsylvplot + theme(legend.position="none"), F3pHsylvplot + theme(legend.position="none"), F3p5pHsylvplot + theme(legend.position="none"), FLSsylvplot + theme(legend.position="none"), DFRsylvplot + theme(legend.position="none"), ANSsylvplot + theme(legend.position="none"), AN1sylvplot + theme(legend.position="none"), FIGdev50, FIGdevprog, labels=c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), nrow=4, ncol=3)

#extract legend from FLSDFR plot
legendsylv<-get_legend(DFRsylvplot + theme(legend.box.margin=margin(0,0,0,0)))

#plot all plots with shared legend at right
png(filename="anth_gene_perc_sylv_60_85_95_and_deviations_50_prog_plots_1-20-23.png", width=13, height=13, units="in", res=300)
plot_grid(FIGsylv, legendsylv, rel_widths=c(3, 0.3))
dev.off()





#DFR, FLS, and F3pH across dev by species

read.csv("DFR-FLS-F3pH_sylv_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHsylv
DFRFLSF3pHsylv<-data.frame(DFRFLSF3pHsylv[,1:5])
DFRFLSF3pHsylv$Dev<-as.factor(DFRFLSF3pHsylv$Dev)
DFRFLSF3pHsylv$Species<-as.factor(DFRFLSF3pHsylv$Species)
DFRFLSF3pHsylv$Gene<-as.factor(DFRFLSF3pHsylv$Gene)
attach(DFRFLSF3pHsylv)

read.csv("DFR-FLS-F3pH_sylv_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHsylvsummary
DFRFLSF3pHsylvsummary<-data.frame(DFRFLSF3pHsylvsummary[1:9,6:9])
DFRFLSF3pHsylvsummary$Dev.1<-as.factor(DFRFLSF3pHsylvsummary$Dev.1)
DFRFLSF3pHsylvsummary$Species.1<-as.factor(DFRFLSF3pHsylvsummary$Species.1)
DFRFLSF3pHsylvsummary$Gene.1<-as.factor(DFRFLSF3pHsylvsummary$Gene.1)
attach(DFRFLSF3pHsylvsummary)


read.csv("DFR-FLS-F3pH_tomf_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHtomf
DFRFLSF3pHtomf<-data.frame(DFRFLSF3pHtomf[,1:5])
DFRFLSF3pHtomf$Dev<-as.factor(DFRFLSF3pHtomf$Dev)
DFRFLSF3pHtomf$Species<-as.factor(DFRFLSF3pHtomf$Species)
DFRFLSF3pHtomf$Gene<-as.factor(DFRFLSF3pHtomf$Gene)
attach(DFRFLSF3pHtomf)

read.csv("DFR-FLS-F3pH_tomf_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHtomfsummary
DFRFLSF3pHtomfsummary<-data.frame(DFRFLSF3pHtomfsummary[1:9,6:9])
DFRFLSF3pHtomfsummary$Dev.1<-as.factor(DFRFLSF3pHtomfsummary$Dev.1)
DFRFLSF3pHtomfsummary$Species.1<-as.factor(DFRFLSF3pHtomfsummary$Species.1)
DFRFLSF3pHtomfsummary$Gene.1<-as.factor(DFRFLSF3pHtomfsummary$Gene.1)
attach(DFRFLSF3pHtomfsummary)


#DFR has no sDFR values for tab095
read.csv("DFR-FLS-F3pH_tab095_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHtab095
DFRFLSF3pHtab095<-data.frame(DFRFLSF3pHtab095[,1:5])
DFRFLSF3pHtab095$Dev<-as.factor(DFRFLSF3pHtab095$Dev)
DFRFLSF3pHtab095$Species<-as.factor(DFRFLSF3pHtab095$Species)
DFRFLSF3pHtab095$Gene<-as.factor(DFRFLSF3pHtab095$Gene)
attach(DFRFLSF3pHtab095)

read.csv("DFR-FLS-F3pH_tab095_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHtab095summary
DFRFLSF3pHtab095summary<-data.frame(DFRFLSF3pHtab095summary[1:9,6:9])
DFRFLSF3pHtab095summary$Dev.1<-as.factor(DFRFLSF3pHtab095summary$Dev.1)
DFRFLSF3pHtab095summary$Species.1<-as.factor(DFRFLSF3pHtab095summary$Species.1)
DFRFLSF3pHtab095summary$Gene.1<-as.factor(DFRFLSF3pHtab095summary$Gene.1)
attach(DFRFLSF3pHtab095summary)


#DFR has no sDFR values for tabChu
read.csv("DFR-FLS-F3pH_tabChu_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHtabChu
DFRFLSF3pHtabChu<-data.frame(DFRFLSF3pHtabChu[,1:5])
DFRFLSF3pHtabChu$Dev<-as.factor(DFRFLSF3pHtabChu$Dev)
DFRFLSF3pHtabChu$Species<-as.factor(DFRFLSF3pHtabChu$Species)
DFRFLSF3pHtabChu$Gene<-as.factor(DFRFLSF3pHtabChu$Gene)
attach(DFRFLSF3pHtabChu)

read.csv("DFR-FLS-F3pH_tabChu_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHtabChusummary
DFRFLSF3pHtabChusummary<-data.frame(DFRFLSF3pHtabChusummary[1:9,6:9])
DFRFLSF3pHtabChusummary$Dev.1<-as.factor(DFRFLSF3pHtabChusummary$Dev.1)
DFRFLSF3pHtabChusummary$Species.1<-as.factor(DFRFLSF3pHtabChusummary$Species.1)
DFRFLSF3pHtabChusummary$Gene.1<-as.factor(DFRFLSF3pHtabChusummary$Gene.1)
attach(DFRFLSF3pHtabChusummary)


read.csv("DFR-FLS-F3pH_QM24_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHQM24
DFRFLSF3pHQM24<-data.frame(DFRFLSF3pHQM24[,1:5])
DFRFLSF3pHQM24$Dev<-as.factor(DFRFLSF3pHQM24$Dev)
DFRFLSF3pHQM24$Species<-as.factor(DFRFLSF3pHQM24$Species)
DFRFLSF3pHQM24$Gene<-as.factor(DFRFLSF3pHQM24$Gene)
attach(DFRFLSF3pHQM24)

read.csv("DFR-FLS-F3pH_QM24_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHQM24summary
DFRFLSF3pHQM24summary<-data.frame(DFRFLSF3pHQM24summary[1:9,6:9])
DFRFLSF3pHQM24summary$Dev.1<-as.factor(DFRFLSF3pHQM24summary$Dev.1)
DFRFLSF3pHQM24summary$Species.1<-as.factor(DFRFLSF3pHQM24summary$Species.1)
DFRFLSF3pHQM24summary$Gene.1<-as.factor(DFRFLSF3pHQM24summary$Gene.1)
attach(DFRFLSF3pHQM24summary)


read.csv("DFR-FLS-F3pH_QM25_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHQM25
DFRFLSF3pHQM25<-data.frame(DFRFLSF3pHQM25[,1:5])
DFRFLSF3pHQM25$Dev<-as.factor(DFRFLSF3pHQM25$Dev)
DFRFLSF3pHQM25$Species<-as.factor(DFRFLSF3pHQM25$Species)
DFRFLSF3pHQM25$Gene<-as.factor(DFRFLSF3pHQM25$Gene)
attach(DFRFLSF3pHQM25)

read.csv("DFR-FLS-F3pH_QM25_TMMsum_60_85_95_1-17-23.csv")->DFRFLSF3pHQM25summary
DFRFLSF3pHQM25summary<-data.frame(DFRFLSF3pHQM25summary[1:9,6:9])
DFRFLSF3pHQM25summary$Dev.1<-as.factor(DFRFLSF3pHQM25summary$Dev.1)
DFRFLSF3pHQM25summary$Species.1<-as.factor(DFRFLSF3pHQM25summary$Species.1)
DFRFLSF3pHQM25summary$Gene.1<-as.factor(DFRFLSF3pHQM25summary$Gene.1)
attach(DFRFLSF3pHQM25summary)


#summed TMM values for both homeologs for DFR (no sDFR for tabs), FLS, and F3pH for 60, 85, and 95 for all accessions
#need to plot this to get the correct legend for the grid plot!

read.csv("DFR_nosDFRtabs_FLS_F3pH_4292_TMMsum_median_60_85_95_1-15-23.csv")->DFRFLSF3pHsummary
DFRFLSF3pHsummary<-data.frame(DFRFLSF3pHsummary[,1:4])
DFRFLSF3pHsummary$dev<-as.factor(DFRFLSF3pHsummary$dev)
DFRFLSF3pHsummary$Species<-as.factor(DFRFLSF3pHsummary$Species)
DFRFLSF3pHsummary$Gene<-as.factor(DFRFLSF3pHsummary$Gene)
attach(DFRFLSF3pHsummary)

read.csv("DFR_nosDFRtabs_FLS_F3pH_4292_TMMsum_median_line_60_85_95_1-15-23.csv")->DFRFLSF3pHline
DFRFLSF3pHline<-data.frame(DFRFLSF3pHline[,1:5])
DFRFLSF3pHline$dev<-as.factor(DFRFLSF3pHline$dev)
DFRFLSF3pHline$Species<-as.factor(DFRFLSF3pHline$Species)
DFRFLSF3pHline$Gene<-as.factor(DFRFLSF3pHline$Gene)
attach(DFRFLSF3pHline)


#plot all DFR, FLS, F3pH by species plots in a grid
library(cowplot)

DFRFLSF3pHsylvplot<-ggplot(DFRFLSF3pHsylv, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHsylv, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=1.5, color="darkgray", alpha=0.6) + 
  scale_shape_manual(values=c(5,20,15)) + stat_summary(data=DFRFLSF3pHsylvsummary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=3, color="darkgray", alpha=0.8) +
  geom_line(data=DFRFLSF3pHsylvsummary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="darkgray") + scale_linetype_manual(values=c("dashed","dotted", "solid")) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)") + ylim(0,800) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHtab095plot<-ggplot(DFRFLSF3pHtab095, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHtab095, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=1.5, color="orange", alpha=0.6) + 
  scale_shape_manual(values=c(5,20,15)) + stat_summary(data=DFRFLSF3pHtab095summary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=3, color="orange", alpha=0.8) +
  geom_line(data=DFRFLSF3pHtab095summary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="orange") + scale_linetype_manual(values=c("dashed", "dotted", "solid")) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)") + ylim(0,800) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHQM24plot<-ggplot(DFRFLSF3pHQM24, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHQM24, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=1.5, color="magenta", alpha=0.6) + 
  scale_shape_manual(values=c(5,20,15)) + stat_summary(data=DFRFLSF3pHQM24summary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=3, color="magenta", alpha=0.8) +
  geom_line(data=DFRFLSF3pHQM24summary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="magenta") + scale_linetype_manual(values=c("dashed","dotted", "solid")) +
  labs(x="Developmental timepoint (% anthesis)", y="Transcript accumulation (TMM)") + ylim(0,800) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHtomfplot<-ggplot(DFRFLSF3pHtomf, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHtomf, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=1.5, color="forestgreen", alpha=0.6) + 
  scale_shape_manual(values=c(5,20,15)) + stat_summary(data=DFRFLSF3pHtomfsummary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=3, color="forestgreen", alpha=0.8) +
  geom_line(data=DFRFLSF3pHtomfsummary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="forestgreen") + scale_linetype_manual(values=c("dashed","dotted", "solid")) +
  xlab("Developmental timepoint (% anthesis)") + ylab("Transcript accumulation (TMM)") + ylim(0,800) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHtabChuplot<-ggplot(DFRFLSF3pHtabChu, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHtabChu, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=1.5, color="cyan", alpha=0.6) + 
  scale_shape_manual(values=c(5,20,15)) + stat_summary(data=DFRFLSF3pHtabChusummary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=3, color="cyan", alpha=0.8) +
  geom_line(data=DFRFLSF3pHtabChusummary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="cyan") + scale_linetype_manual(values=c("dashed", "dotted", "solid")) +
  xlab("Developmental timepoint (% anthesis)") + ylab("Transcript accumulation (TMM)") + ylim(0,800) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHQM25plot<-ggplot(DFRFLSF3pHQM25, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHQM25, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=1.5, color="darkmagenta", alpha=0.6) + 
  scale_shape_manual(values=c(5,20,15)) + stat_summary(data=DFRFLSF3pHQM25summary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=3, color="darkmagenta", alpha=0.8) +
  geom_line(data=DFRFLSF3pHQM25summary, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="darkmagenta") + scale_linetype_manual(values=c("dashed","dotted", "solid")) +
  xlab("Developmental timepoint (% anthesis)") + ylab("Transcript accumulation (TMM)") + ylim(0,800) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))


DFRFLSF3pHlegendplot<-ggplot(DFRFLSF3pHsummary, aes(x=dev, y=TMMsum)) + theme_classic() + geom_point(data=DFRFLSF3pHsummary, aes(x=dev, y=TMMsum, color=Species, alpha=Species, shape=Gene), cex=3) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) + scale_shape_manual(values=c(5,20,15), guide=guide_legend(label.theme=element_text(angle=0, face="italic", size=11))) + 
  geom_line(data=DFRFLSF3pHline, aes(x=dev, y=TMMsum, group=Genebysp, linetype=Gene)) + scale_linetype_manual(values=c("dashed", "dotted", "solid"), guide=guide_legend(label.theme=element_text(angle=0, face="italic", size=11))) +
  xlab("Developmental timepoint (% anthesis)") + ylab("Transcript accumulation (TMM)") + 
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=12), legend.text=element_text(size=11))



#plot all plots in a grid with legends
FIGDFRFLSF3pH<-plot_grid(DFRFLSF3pHsylvplot + theme(legend.position="none"), DFRFLSF3pHtab095plot + theme(legend.position="none"), 
                         DFRFLSF3pHQM24plot + theme(legend.position="none"), DFRFLSF3pHtomfplot + theme(legend.position="none"), 
                         DFRFLSF3pHtabChuplot + theme(legend.position="none"), DFRFLSF3pHQM25plot + theme(legend.position="none"), 
                         labels=c("A", "C", "E", "B", "D", "F"), nrow=2, ncol=3)

#extract legend from FLSDFR plot
legendDFRFLSF3pH<-get_legend(DFRFLSF3pHlegendplot + theme(legend.box.margin=margin(0,0,0,0)))

#plot all plots with shared legend at right
png(filename="DFR_FLS_F3pH_by_species_60_85_95_plot_grid_1-17-23.png", width=11, height=7, units="in", res=300)
plot_grid(FIGDFRFLSF3pH, legendDFRFLSF3pH, rel_widths=c(3, 0.3))
dev.off()




#plot pigment values against TMMsums that seem to explain them
read.csv("pigments_DFR60_FLS60_F3pH60_1-18-23.csv")->pigments
pigments<-data.frame(pigments[,1:8]) 
pigments$Species<-as.factor(pigments$Species)
attach(pigments)

#all pigments: anth_sum, flav_sum, K:Q
read.csv("pigments_all_1-9-23.csv")->pigmentsall
pigmentsall<-data.frame(pigmentsall[,1:5]) 
pigmentsall$Species<-as.factor(pigmentsall$Species)
pigmentsall$ID<-as.factor(pigmentsall$ID)
attach(pigmentsall)


#plot pigment plots in a grid
library(cowplot)
library(ggnewscale)

anthsflavsplot<-ggplot(pigmentsall, aes(x=anth_sum, y=flav_sum)) + theme_classic() + geom_point(aes(x=anth_sum, y=flav_sum, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) +
  labs(x="Anthocyanins (mg/g fresh mass)", y="Flavonols\n(mg/g fresh mass)") + ylim(0,0.25) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=11), legend.text=element_text(size=10))

anthsDFR60plot<-ggplot(pigments, aes(x=DFR_no_sDFRtabs_60, y=anth_sum_median)) + theme_classic() + geom_point(aes(x=DFR_no_sDFRtabs_60, y=anth_sum_median, color=Species, alpha=Species), pch=16, cex=4) + 
  scale_color_manual(values=c("lightpink", "deeppink", "lightgray", "deeppink", "lightpink", "deeppink")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=DFR_no_sDFRtabs_60, y=anth_sum_median, color=Species, fill=Species), pch=16, cex=2) + scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  labs(x=expression(""~italic(DFR)~" transcript accumulation (TMM)"), y="Anthocyanins\n(mg/g fresh mass)") + ylim(0,0.03) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=11), legend.text=element_text(size=10))

flavsFLS60plot<-ggplot(pigments, aes(x=FLS_60, y=flav_sum_median)) + theme_classic() + geom_point(aes(x=FLS_60, y=flav_sum_median, color=Species, alpha=Species), pch=16, cex=4) + 
  scale_color_manual(values=c("gray80", "gray80", "gray80", "gray80", "gray40", "gray40")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=FLS_60, y=flav_sum_median, color=Species, fill=Species), pch=16, cex=2) + scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  labs(x=""~italic(FLS)~" transcript accumulation (TMM)", y="Flavonols\n(mg/g fresh mass)") + xlim(0,700) + ylim(0, 0.2) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=11), legend.text=element_text(size=10))

KQFLSF3pHplot<-ggplot(pigments, aes(x=FLSF3pH_60, y=KQ_median)) + theme_classic() + geom_point(aes(x=FLSF3pH_60, y=KQ_median, color=Species, alpha=Species), pch=16, cex=4) + 
  scale_color_manual(values=c("gray60", "gray40", "gray80", "gray40", "gray80", "gray40")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=FLSF3pH_60, y=KQ_median, color=Species, fill=Species), pch=16, cex=2) + scale_color_manual(values=c("magenta", "darkmagenta", "darkgray", "orange", "cyan", "forestgreen")) +
  labs(x=""~italic(FLS:F3pH)~" transcript accumulation (TMM)", y="K:Q\n(mg/g fresh mass)") + geom_hline(yintercept=1, color="darkgray", linetype="dashed") + xlim(0,7) + ylim(0,4) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=11), legend.text=element_text(size=10))


#plot all plots in a grid
png(filename="anthsflavs_DFR_FLS_F3pH_plot_grid_1-18-23.png", width=8, height=5, units="in", res=300)
plot_grid(anthsflavsplot, anthsDFR60plot, flavsFLS60plot, KQFLSF3pHplot, labels=c("A", "B", "C", "D"), nrow=2, ncol=2, rel_widths=c(1,1))
dev.off()
