# Set working directory
setwd("~/Google 雲端硬碟/Research/SEM_Course/Reanalysis")
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
dtacov <- cor2cov(dtacor,c(17.3,17.1,8.4,7.5,5.7,1.7,2.1,2.0))
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
fit_BM <- sem(BM1, estimator = "ML",
           #likelihood = "wishart",
           sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fit_BM, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_BM, standardized=TRUE, fit.measures=T), file = "fit_BM.txt")
# Produce Figure
# pdf(file = "Fig1_BM_Demo.pdf",width = 7, height = 7)
# semPaths(fit_BM,what = "col",
#          nDigits = 3,
#          groups = "latents",bg = "white", 
#          style = "lisrel",layout = "circle")
# dev.off()
pdf(file = "Fig_BM_Rst.pdf",width = 7, height = 7)
semPaths(fit_BM,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()

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
fit_MM <- sem(MM, estimator = "ML",
              #likelihood = "wishart",
              sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fit_MM, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_MM, standardized=TRUE, fit.measures=T), file = "fit_MM.txt")
# Figure
# pdf(file = "Fig3_MM1_Demo.pdf",width = 7, height = 7)
# semPaths(fit_MM1,what = "col",
#          nDigits = 3,
#          groups = "latents",bg = "white", 
#          style = "lisrel",layout = "circle")
# dev.off()
pdf(file = "Fig_MM_Rst.pdf",width = 7, height = 7)
semPaths(fit_MM,what = "col",whatLabels = "std",
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
fit_MM2 <- sem(MM2, estimator = "ML",
               #likelihood = "wishart",
               sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fit_MM2, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_MM2, standardized=TRUE, fit.measures=T), file = "fit_MMind.txt")
# Figure
# pdf(file = "Fig5_MM2_Demo.pdf",width = 7, height = 7)
# semPaths(fit_MM2,what = "col",
#          nDigits = 3,
#          groups = "latents",bg = "white", 
#          style = "lisrel",layout = "circle")
# dev.off()
pdf(file = "Fig_MMind_Rst.pdf",width = 7, height = 7)
semPaths(fit_MM2,what = "col",whatLabels = "std",
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
fit_CFApart <- sem(CFApart, estimator = "ML",
               #likelihood = "wishart",
               sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fit_CFApart, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_CFApart, standardized=TRUE, fit.measures=T), file = "fit_CFApart.txt")

pdf(file = "Fig_CFA_Rst.pdf",width = 7, height = 7)
semPaths(fit_CFApart,what = "col",whatLabels = "std",
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
# fit_Str <- sem(Str, estimator = "ML",
#               #likelihood = "wishart",
#               sample.nobs = N, sample.cov = StrCov)
# # Show the result
# summary(fit_Str, standardized=TRUE, fit.measures=T)
# capture.output(summary(fit_Str, standardized=TRUE, fit.measures=T), file = "fit_BM.txt")

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
fit_MMfull <- sem(MMfull, estimator = "ML",
               #likelihood = "wishart",
               sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fit_MMfull, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_MMfull, standardized=TRUE, fit.measures=T), file = "fit_MMfull.txt")
# Figure
pdf(file = "Fig_MMfull_Rst.pdf",width = 7, height = 7)
semPaths(fit_MMfull,what = "col",whatLabels = "std",
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
fit_MMfull_CFA <- sem(MMfull_CFA, estimator = "ML",
                  #likelihood = "wishart",
                  sample.nobs = N, sample.cov = dtacov)
# Show the result
summary(fit_MMfull_CFA, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_MMfull_CFA, standardized=TRUE, fit.measures=T), file = "fit_MMfull_CFA.txt")
# Figure
pdf(file = "Fig_MMfull_CFA_Rst.pdf",width = 7, height = 7)
semPaths(fit_MMfull_CFA,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()



Strdta <- '
89.645,
3.331,1.611,
30.711,2.962,32.057
'
StrCov <- getCov(Strdta, names=c("EVP","FS", "SP"))
MMfull_STR <- '
    # regressions
FS ~ SP
SP ~ EVP
'
# Fit the model using ML estimator
fit_MMfull_STR <- sem(MMfull_STR, estimator = "ML",
                      #likelihood = "wishart",
                      sample.nobs = N, sample.cov = StrCov)
# Show the result
summary(fit_MMfull_STR, standardized=TRUE, fit.measures=T)
capture.output(summary(fit_MMfull_STR, standardized=TRUE, fit.measures=T), file = "fit_MMfull_STR.txt")
# Figure
pdf(file = "Fig_MMfull_STR_Rst.pdf",width = 7, height = 7)
semPaths(fit_MMfull_STR,what = "col",whatLabels = "std",
         nDigits = 3,
         #groups = "latents",
         bg = "white", 
         style = "lisrel")
dev.off()