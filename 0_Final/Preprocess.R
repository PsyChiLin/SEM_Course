## Supporting functions
library(Hmisc);library(psych);library(GGally);library(ggplot2)
setwd("~/Google 雲端硬碟/Research/SEM_Course/0_Final")

## Preproc
dta <- na.omit(read.csv("../../SEM_Course_FinalData/data_clean_20180522.csv"))
head(dta);str(dta);dim(dta)
dta$Subj <- as.factor(dta$Subj)
dta$Gender <- as.factor(dta$Gender)

## CorMat
cormat <- rcorr(as.matrix(dta[,-c(1:2)]))
write.csv(cormat$r, file = "CorMat.csv",row.names = T)
write.csv(cormat$P, file = "CorMat_p.csv",row.names = T)

## DeStat
summary(dta[,1:2])
De <- describe(dta)
write.csv(De, file = "DeStat.csv")

## Explorations
png(file = "Explore.png",height=40, width=60, units="in", res = 300)
ggpairs(dta[,-c(1)], lower = list(continuous = "smooth"))
dev.off()

