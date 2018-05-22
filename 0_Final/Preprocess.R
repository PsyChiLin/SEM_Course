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
png(file = "Plots/Demogaphic.png",height=5, width=6, units="in", res = 300)
ggpairs(dta[,2:5], lower = list(continuous = "smooth"))
dev.off()

png(file = "Plots/BADL.png",height=5, width=6, units="in", res = 300)
ggpairs(dta[,6:14], lower = list(continuous = "smooth"))
dev.off()

png(file = "Plots/IADL.png",height=5, width=6, units="in", res = 300)
ggpairs(dta[,15:22], lower = list(continuous = "smooth"))
dev.off()

png(file = "Plots/PSPCGISSFST.png",height=5, width=6, units="in", res = 300)
ggpairs(dta[,23:31], lower = list(continuous = "smooth"))
dev.off()
