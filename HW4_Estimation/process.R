# Require the lavaan package
library(lavaan)
# Read data into working directory
dta <- read.csv("HW4_Estimation/data/lower.csv")
# Data preprocessing
row.names(dta) <- dta[,1]
dta <- dta[,-1]
dta[upper.tri(dta)] <- dta[lower.tri(dta)]
dta <- as.matrix(dta)
# Define sample size
N = 403
# Specify model
model <- '
    ## latent variable definitions
    # endo
    POE =~ 1*POE1 + ly1 * POE2 + ly2 * POE3
    ICO =~ 1*ICO1 + ly3 * ICO2 + ly4 * ICO3
    IEC =~ 1*IEC1 + ly5 * IEC2 + ly6 * IEC3
    # exo
    SEB =~ 1*SEB1 + lx1 * SEB2 + lx2 * SEB3


    ## regressions
    POE ~ g1 * SEB
    ICO ~ b1 * SEB + b2 * POE
    IEC ~ b3 * ICO
'
# Fit the model using ML estimator
fit <- sem(model, estimator = "ML",
           #likelihood = "wishart",
           sample.nobs = N, sample.cov = dta)
# Show the result
summary(fit, standardized=TRUE, fit.measures=T)
capture.output(summary(fit, standardized=TRUE, fit.measures=T), file = "HW4_Estimation/fit.txt")
# Produce Figure
pdf(file = "HW4_Estimation/Fig1_Demo.pdf",width = 7, height = 7)
semPaths(fit,what = "col",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel",layout = "circle")
dev.off()
pdf(file = "HW4_Estimation/Fig2_Rst.pdf",width = 7, height = 7)
semPaths(fit,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel",layout = "circle")
dev.off()
