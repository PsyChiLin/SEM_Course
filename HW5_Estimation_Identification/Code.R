# Require the lavaan package
library(lavaan)
library(semPlot)

# Read data into working directory
setwd("~/Google 雲端硬碟/Research/SEM_Course/HW5_Estimation_Identification")
dta <- read.csv("data/lower.csv")

# Data preprocessing
row.names(dta) <- dta[,1]
dta <- dta[,-1]
dta <- as.matrix(dta)

# Define sample size
N = 200

# show dta
dta
str(dta)

# Specify model
model <- '
    # endo
    ETA1 =~ 1*Y1 + start(0.2)* Y2 + start(0.2) * Y3
    ETA2 =~ 1*Y4 + start(0.2)* Y5 + start(0.2) * Y6
    # regressions
    XI1 =~  1 * ETA1 + start(0.2)*ETA2
'

# Fit the model using ML estimator
fit <- sem(model, estimator = "ML",
           #likelihood = "wishart",
           sample.nobs = N, sample.cov = dta)

# Show the result
capture.output(summary(fit, standardized=TRUE, fit.measures=T), file = "fit.txt")
capture.output(parameterEstimates(fit),file = "est.txt")

# resid cov mat
resid(fit)
#resid(fit,type="standardized")

# fit cov mat
fitted(fit)
#vcov(fit)

# Many fit indices
fitMeasures(fit)

# inspect something internally
inspect(fit)
inspect(fit, what="start")
inspect(fit, what="list")

# Produce Figure
pdf(file = "Fig1.pdf",width = 7, height = 7)
semPaths(fit,what = "col",#whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()
pdf(file = "Fig2.pdf",width = 7, height = 7)
semPaths(fit,what = "col",whatLabels = "std",
         nDigits = 3,
         groups = "latents",bg = "white", 
         style = "lisrel")
dev.off()
