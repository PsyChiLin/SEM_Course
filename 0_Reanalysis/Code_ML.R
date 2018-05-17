# Set working directory
setwd("~/Google 雲端硬碟/Research/SEM_Course/0_Reanalysis")
rm(list = ls())
# Require the packages
library(lavaan)
library(semPlot)
# Data preprocessing
lower <- '
1,
0.44,  1
0.29,  0.31,  1
0.31,  0.28,  0.49,  1
0.31,  0.32,  0.38,  0.35,  1
0.24,  0.33,  0.07,  0.03, 0.36,  1
0.18,  0.21,  0.08,  0.11, 0.33, 0.52,  1
0.11,  0.26, -0.05, -0.13, 0.11, 0.47, 0.47,1
'
dtacor <- getCov(lower, names=c("FM_TL","BM_TL", "FM_TI", "BM_TI","PNS","WF","IL","SF"))
dtacov <- cor2cov(dtacor,c(17.3,17.1,8.4,7.5,5.7,2.0,1.7,2.1))
# Define sample size
N = 75

# Specify model: Basic Model
BM1 <- '
    # latent variable definitions
    EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
    FS  =~ 1 * WF + IL + SF
    # regressions
    FS ~ EVP
'
# Fit the model using ML estimator
fitML_BM <- sem(BM1, estimator = "ML",
           #likelihood = "wishart",
           sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fitML_BM, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_BM, standardized=TRUE, fit.measures=T), file = "fitML_BM.txt")
fitMeasures(fitML_BM, fit.measures = "all", baseline.model = NULL)
# Produce Figure
# pdf(file = "Fig1_BM_Demo.pdf",width = 7, height = 7)
# semPaths(fitML_BM,what = "col",
#          nDigits = 3,
#          groups = "latents",bg = "white", 
#          style = "lisrel",layout = "circle")
# dev.off()
pdf(file = "Fig_BM_RstML.pdf",width = 7, height = 7)
semPaths(fitML_BM,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()

# BM model two stage
BM2 <- '
    # latent variable definitions
    EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
    FS  =~ 1 * WF + IL + SF
'
# # Fit the model using ML estimator
# fitML_BM2 <- sem(BM2, estimator = "ML",sample.nobs = N, sample.cov = dtacov)
# # Show the result
# summary(fitML_BM2, standardized=TRUE, fit.measures=T)
# Strdta <- '
# 111.126,
# 5.217,2.154
# '
# StrCov <- getCov(Strdta, names=c("EVP","FS"))
# BM2_STR <- '
#     # regressions
#     FS ~ EVP
# '
# fitML_BM2 <- sem(BM2_STR, estimator = "ML",sample.nobs = N, sample.cov = StrCov )
# summary(fitML_BM2, standardized=TRUE, fit.measures=T)
# semPaths(fitML_BM2,what = "col",whatLabels = "std",
#          nDigits = 3,
#          #groups = "latents",
#          bg = "white", 
#          style = "lisrel")


## MM model
MM <- '
    # latent variable definitions
    EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
    FS  =~ 1 * WF + IL + SF
    SP  =~ 1 * PNS
    # regressions
    FS ~ EVP + SP
    SP ~ EVP
'
# Fit the model using ML estimator
fitML_MM <- sem(MM, estimator = "ML",
              #likelihood = "wishart",
              sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fitML_MM, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_MM, standardized=TRUE, fit.measures=T), file = "fitML_MM.txt")
fitMeasures(fitML_MM, fit.measures = "all", baseline.model = NULL)
# Figure
# pdf(file = "Fig3_MM1_Demo.pdf",width = 7, height = 7)
# semPaths(fitML_MM1,what = "col",
#          nDigits = 3,
#          groups = "latents",bg = "white", 
#          style = "lisrel",layout = "circle")
# dev.off()
pdf(file = "Fig_MM_RstML.pdf",width = 7, height = 7)
semPaths(fitML_MM,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()

## MM2 model : use Ind rather than LV
MM2 <- '
    # latent variable definitions
    EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
    FS  =~ 1 * WF + IL + SF
    # regressions
    FS ~ EVP + PNS
    PNS ~ EVP
'
# Fit the model using ML estimator
fitML_MM2 <- sem(MM2, estimator = "ML",
               #likelihood = "wishart",
               sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fitML_MM2, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_MM2, standardized=TRUE, fit.measures=T), file = "fitML_MMind.txt")
fitMeasures(fitML_MM2, fit.measures = "all", baseline.model = NULL)
# Figure
# pdf(file = "Fig5_MM2_Demo.pdf",width = 7, height = 7)
# semPaths(fitML_MM2,what = "col",
#          nDigits = 3,
#          groups = "latents",bg = "white", 
#          style = "lisrel",layout = "circle")
# dev.off()
pdf(file = "Fig_MMind_RstML.pdf",width = 7, height = 7)
semPaths(fitML_MM2,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()

## MMind & MM1 are two equ models

CFApart <- '
    EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
    FS  =~ 1 * WF + IL + SF
    SP  =~ 1 * PNS
'
# Fit the model using ML estimator
fitML_CFApart <- sem(CFApart, estimator = "ML",
               #likelihood = "wishart",
               sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fitML_CFApart, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_CFApart, standardized=TRUE, fit.measures=T), file = "fitML_CFApart.txt")
fitMeasures(fitML_CFApart, fit.measures = "all", baseline.model = NULL)

pdf(file = "Fig_CFA_RstML.pdf",width = 7, height = 7)
semPaths(fitML_CFApart,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()

## MMind & MM1 $ CFA are three equ models

# Strdta <- '
# 89.645,
# 3.331,1.611,
# 30.711,2.962,32.057
# '
# StrCov <- getCov(Strdta, names=c("EVP","FS", "SP"))
# Str <- '
#     # regressions
#     FS ~ EVP + SP
#     SP ~ EVP
# '
# fitML_Str <- sem(Str, estimator = "ML",
#               #likelihood = "wishart",
#               sample.nobs = N, sample.cov = StrCov)
# # Show the result
# summary(fitML_Str, standardized=TRUE, fit.measures=T)
# capture.output(summary(fitML_Str, standardized=TRUE, fit.measures=T), file = "fitML_BM.txt")

###### Fully Mediated Model
MMfull <- '
# latent variable definitions
EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
FS  =~ 1 * WF + IL + SF
SP  =~ 1 * PNS
# regressions
FS ~ SP
SP ~ EVP
'
# Fit the model using ML estimator
fitML_MMfull <- sem(MMfull, estimator = "ML",
               #likelihood = "wishart",
               sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fitML_MMfull, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_MMfull, standardized=TRUE, fit.measures=T), file = "fitML_MMfull.txt")
fitMeasures(fitML_MMfull, fit.measures = "all", baseline.model = NULL)

# Figure
pdf(file = "Fig_MMfull_RstML.pdf",width = 7, height = 7)
semPaths(fitML_MMfull,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()

###### Fully Mediated Model: Two Stage
MMfull_CFA <- '
    # latent variable definitions
    EVP =~ 1 * FM_TL + BM_TL + FM_TI + BM_TI
    FS  =~ 1 * WF + IL + SF
    SP  =~ 1 * PNS
'
# Fit the model using ML estimator
fitML_MMfull_CFA <- sem(MMfull_CFA, estimator = "ML",
                  #likelihood = "wishart",
                  sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fitML_MMfull_CFA, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_MMfull_CFA, standardized=TRUE, fit.measures=T), file = "fitML_MMfull_CFA.txt")
# Figure
pdf(file = "Fig_MMfull_CFA_RstML.pdf",width = 7, height = 7)
semPaths(fitML_MMfull_CFA,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()



Strdta <- '
89.645,
3.919,2.230,
30.711,3.485,32.057
'
StrCov <- getCov(Strdta, names=c("EVP","FS", "SP"))
MMfull_STR <- '
    # regressions
FS ~ SP
SP ~ EVP
'
# Fit the model using ML estimator
fitML_MMfull_STR <- sem(MMfull_STR, estimator = "ML",
                      #likelihood = "wishart",
                      sample.nobs = N, sample.cov = StrCov)
# Show the result
summary(fitML_MMfull_STR, standardized=TRUE, fit.measures=T)
capture.output(summary(fitML_MMfull_STR, standardized=TRUE, fit.measures=T), file = "fitML_MMfull_STR.txt")
fitMeasures(fitML_MMfull_STR, fit.measures = "all", baseline.model = NULL)

# Figure
pdf(file = "Fig_MMfull_STR_RstML.pdf",width = 7, height = 7)
semPaths(fitML_MMfull_STR,what = "col",whatLabels = "std",
         nDigits = 3,
         #groups = "latents",
         bg = "white", 
         style = "lisrel")
dev.off()