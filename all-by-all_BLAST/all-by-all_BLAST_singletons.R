setwd("C:/Users/Elizabeth/Dropbox/Nicotiana_DE_2019_Nano/ENA_Nano_min800_assemblies_Oct2019/all by all BLAST")

#to find homeologs, an all_by_all_BLAST was run, yielding sylvtotomf (SytoTo) and tomftosylv (TotoSy) results
#for each set of results, counted the # of times each query ID is present
#extracted singletons (only present once) in each set of results
#checked whether singletons overlap by comparing SytoTo query to TotoSy subject and TotoSy query to SytoTo subject
#checked overlap for both the overlap datasets to see if they match
#they mostly do--11 contigs (4 SytoTo, 7 TotoSy) do not
#5581 one-to-one homeologs--none of the anth genes are present in this set


library(dplyr)

read.csv("SytoTo_all_BLAST.csv")->data
data<-data.frame(data[,1:14]) 
attach(data)

#count the number of times each ID is present. Column format is: ID, n
multiples <- 
  data %>% 
  count(Query.seq.ID, sort = TRUE)
multiples

write.csv(multiples, file = "SytoTo_all_BLAST_number_each.csv")

read.csv("TotoSy_all_BLAST.csv")->data2
data2<-data.frame(data2[,1:14]) 
attach(data2)

#count the number of times each ID is present. Column format is: ID, n
multiples2 <- 
  data2 %>% 
  count(Query.seq.ID, sort = TRUE)
multiples2

write.csv(multiples2, file = "TotoSy_all_BLAST_number_each.csv")


#Extract singletons--IDs only present once
singletons_SytoTo<-multiples[multiples$n %in% 1,]

SytoTo_list<-unlist(singletons_SytoTo$Query.seq.ID)

#Extract full data for those singletons
singletons_SytoTo_allcol<-data[data$Query.seq.ID %in% SytoTo_list,]

write.csv(singletons_SytoTo_allcol, file = "all_by_all_BLAST_SytoTo_singletons_allcol_10-27-19.csv")


#Extract singletons--IDs only present once
singletons_TotoSy<-multiples2[multiples2$n %in% 1,]

TotoSy_list<-unlist(singletons_TotoSy$Query.seq.ID)

#Extract full data for those singletons
singletons_TotoSy_allcol<-data2[data2$Query.seq.ID %in% TotoSy_list,]

write.csv(singletons_TotoSy_allcol, file = "all_by_all_BLAST_TotoSy_singletons_allcol_10-27-19.csv")


#check if SytoTo and TotoSy overlap. 
singletons_SytoTo_allcol$Query.seq.ID<-as.character(singletons_SytoTo_allcol$Query.seq.ID)

#repeat for TotoSy
singletons_TotoSy_allcol$Query.seq.ID<-as.character(singletons_TotoSy_allcol$Query.seq.ID)

library(gplots)
sylvtomf<-venn(list(singletons_SytoTo_allcol$Query.seq.ID, singletons_TotoSy_allcol$Subject.seq.ID), show.plot = FALSE)
str(sylvtomf)
inters<-attr(sylvtomf, "intersections")
inters<-sapply(inters, '[', seq(max(sapply(inters, length))))
write.csv(inters, file = "SytoTo_query_TotoSy_subject_singleton_overlap_10-27-19.csv")

tomfsylv<-venn(list(singletons_TotoSy_allcol$Query.seq.ID, singletons_SytoTo_allcol$Subject.seq.ID), show.plot = FALSE)
str(tomfsylv)
inters<-attr(tomfsylv, "intersections")
inters<-sapply(inters, '[', seq(max(sapply(inters, length))))
write.csv(inters, file = "TotoSy_query_SytoTo_subject_singleton_overlap_10-27-19.csv")


#change A:B column name in venn diagram csv files to 'overlap' so you can call it later. Extract overlap IDs from singleton_allcol datasets to see whether the overlap sylv and tomf IDs match
read.csv("SytoTo_query_TotoSy_subject_singleton_overlap_10-27-19.csv")->SytoTo_overlap
SytoTo_overlap<-data.frame(SytoTo_overlap[,1:4]) 
attach(SytoTo_overlap)
SytoTo_overlapoverlap<-unlist(SytoTo_overlap$overlap)

read.csv("TotoSy_query_SytoTo_subject_singleton_overlap_10-27-19.csv")->TotoSy_overlap
TotoSy_overlap<-data.frame(TotoSy_overlap[,1:4]) 
attach(TotoSy_overlap)
TotoSy_overlapoverlap<-unlist(TotoSy_overlap$overlap)

SytoTo_overlap_allcol<-singletons_SytoTo_allcol[singletons_SytoTo_allcol$Query.seq.ID %in% SytoTo_overlapoverlap,]
write.csv(SytoTo_overlap_allcol, file = "SytoTo_overlap_10-27-19.csv")
TotoSy_overlap_allcol<-singletons_TotoSy_allcol[singletons_TotoSy_allcol$Query.seq.ID %in% TotoSy_overlapoverlap,]
write.csv(TotoSy_overlap_allcol, file = "TotoSy_overlap_10-27-19.csv")

#To ensure that homeologs were presentin both SytoTo_overlap and TotoSy_overlap, copy/pasted the query and subject IDs from both files.
#Sorted the query and subect IDs from SytoTo by the queries (sylv) and the query and subject IDs from TotoSy by the subjects (sylv), so that they should be in the same order.
#Checked to see if all the homeolog pairs matched up between files.  Deleted those that were present in one, but missing from the other
#Deleted the second query and subject ID columns, relabelled columns 'sylv' and 'tomf' and saved the one-on-one homeologs "sylvtomf_one-to-one_homeologs_10-27-19.csv"  File has two columns: sylv and tomf homeolog IDs.  Yielded 2015 homeologs.
