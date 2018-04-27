---
title: 'HomeWork on Estimation'
author: Chi-Lin Yu (R05227101)
output: pdf_document
---

The present work aimed to demonstrate whether a given model is an identified one through the results of statistical softwores. As shown in the given figure, the model had one exogenous variable, two endogenous variables, and six indicators (Figure1). They were respectively named as $\xi_1$, $\eta_1$, $\eta_2$, and $y_1$ to $y_6$. In the model, the latent variables $\xi_1$, $\eta_1$, and $\eta_2$ were scaled by fixing one of their loadings to $1$. According to Figure 1, we understood that the degree of freedom (df) of this model is $7$, shown by $p(p+1)/2 - q$, where $p$ is the numebr of indicators and $q$ is the number of distinct free parameter. 

![The given model. XI1 indicates $\xi_1$. ETA1 and ETA2 indicates $\eta_1$ and $\eta_2$. The colors specify different latent variables and its indicators. ](Fig1.pdf)

We used the `lavaan` package, a free open source package in `R` that provide a good platform for latent variable analyses (i.e., structural equation modeling), to analyze the data. The data was a covariance matrix with the sample size of 200 (N = 200). The maximum likelihood estimator, which assumes multivariate normality, was used in the present work to estimate each parameter and obstain the overall model fitting. The optimization procedure used here was the PORT routines with Broyden–Fletcher–Goldfarb–Shanno (BFGS) algorithm, one of the quasi-Newton methods with Hessian approximation, in the `nlminb` package in `R`.

The results demonstarted that we failed to discomfirm the present model (${\chi}^2(7, N = 200)$ = $4.080$, $p$ = $0.771$), suggesting that the model implied covariance matrix is somehow close to the given sample covariance matrix. Other fit indexes also suggested fair overall model fitting: comparative fit index (CFI) = 1; tucker-lewis index (TLI) = 1 ; root mean square error of approximation (RMSEA, 90% confidence interval) = 0 (0-.059); standardized root mean square residual (SRMR) = .024.

The Estimates of parameter are shown in Figure 2 & Table 1. Although the point estimates could be computed, the standard error (SE) were not obtainable. To be more specific, niether the SE of loadings nor the SE of variances were not obstaiable. It was an important sign, implying that the model or the data in the fitting has some problems. In this case, since the SE estimates were not obtainable, we suggested that the model used here was not identified. In another viewpoint, if we only considered the higher order factor structure part of this model (or the structural part), the model could be regarded as a two indicator model (one factor with two indicators). It was obvious that a two indicator model without relationships with other factors (e.g., no other higher odrder factors in this case) would not be identidied. Likewise, we could take $\sum(\hat\theta)$ as an input matrix or take another sets of starting values to see whether the results remain the same. Although these are not required in the present study due to the obvious under-identified situation, it could still serve as useful emprical checks.

In brief, even if the df of the model was bigger than 0, the model fit indexes could be computed, and the point estimates of parameters could be calculated, we could still conclude that this model was an unidentified one from at least two persectives, including the graphical (i.e., therotical/mathematical) one and the numerical one (i.e., the SE estimates were not obtainable.) 



![The point estimates of the parameter in the specified model.](Fig2.pdf)

![](Table1.pdf)
