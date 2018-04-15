---
title: 'HomeWork 3'
author: Chi-Lin Yu (R05227101)
output: pdf_document

---

## Q1 
With the scales of the latent variables properly fixed, is the following model identified?

## Express each parameter in terms of the elements of $\sum$ 
We have a covariance matrix
\begin{equation}
\sum = 
\begin{bmatrix}
    \sigma_{1}^2    & \sigma_{12} & \sigma_{13} & \sigma_{1x_{4}} \\
    \sigma_{21} & \sigma_{2}^2    & \sigma_{23} & \sigma_{2x_{4}} \\
    \sigma_{31} & \sigma_{32} & \sigma_{3}^2    & \sigma_{3x_{4}} \\
    \sigma_{41} & \sigma_{42} & \sigma_{43} & \sigma_{4}^2  
\end{bmatrix}
\label{eq:sig}
\end{equation}
, four major equations 
\begin{equation}
x_{1} = \lambda_{1}\xi_{1} + \delta_{1};
x_{2} = \lambda_{2}\xi_{1} + \delta_{2};
x_{3} = \lambda_{3}\xi_{2} + \delta_{3};
x_{4} = \lambda_{4}\xi_{2} + \delta_{4}
\label{eq:def4eq}
\end{equation}
, and the covariance matrix between two $\xi$s
\begin{equation}
\Phi = 
\begin{bmatrix}
1 & \phi_{12} \\
\phi_{21} & 1 
\end{bmatrix}
\label{eq:eqphi}
\end{equation}
where $\phi_{12}$ = $\phi_{21}$, and we define them as $\phi$. We also let $Var(\xi_{1})$ = $Var(\xi_{2})$ = $1$. Therefore, we have $10$ data points and $9$ parameters, thereby leading to $1$ degree of freedom in this case. Then we can derive the equations for each $\sigma_{ij}$ in the $\sum$ in terms of the parameters.

\begin{equation}
\sigma_{1}^2 = \lambda_{1}^2 + Var(\delta_{1})
\label{eq:eq1}
\end{equation}

\begin{equation}
\sigma_{2}^2 = \lambda_{2}^2 + Var(\delta_{2})
\label{eq:eq2}
\end{equation}

\begin{equation}
\sigma_{3}^2 = \lambda_{3}^2 + Var(\delta_{3})
\label{eq:eq3}
\end{equation}

\begin{equation}
\sigma_{4}^2 = \lambda_{4}^2 + Var(\delta_{4})
\label{eq:eq4}
\end{equation}

\begin{equation}
\sigma_{12} = \lambda_{1}\lambda_{2}
\label{eq:eq5}
\end{equation}

\begin{equation}
\sigma_{13} = \lambda_{1}\lambda_{3}\phi
\label{eq:eq6}
\end{equation}

\begin{equation}
\sigma_{14} = \lambda_{1}\lambda_{4}\phi
\label{eq:eq7}
\end{equation}

\begin{equation}
\sigma_{23} = \lambda_{2}\lambda_{3}\phi
\label{eq:eq8}
\end{equation}

\begin{equation}
\sigma_{24} = \lambda_{2}\lambda_{4}\phi
\label{eq:eq9}
\end{equation}

\begin{equation}
\sigma_{34} = \lambda_{3}\lambda_{4}
\label{eq:eq10}
\end{equation}

Using those equations, we can further derive the formaulations of the parameters. We let \eqref{eq:eq6} divided by \eqref{eq:eq7} and \eqref{eq:eq6} divided by \eqref{eq:eq8}. Will have 

\begin{equation}
\lambda_{3} = \dfrac{\sigma_{13}}{\sigma_{14}}\lambda_{4};
\lambda_{4} = \dfrac{\sigma_{14}}{\sigma_{13}}\lambda_{3};
\lambda_{1} = \dfrac{\sigma_{13}}{\sigma_{23}}\lambda_{2};
\lambda_{2} = \dfrac{\sigma_{23}}{\sigma_{13}}\lambda_{1}
\label{eq:eq11}
\end{equation}

and let \eqref{eq:eq11} fill into \eqref{eq:eq5} and \eqref{eq:eq10}. Then we obtain

\begin{equation}
\lambda_{1} = \pm \sqrt{\dfrac{\sigma_{12}\sigma_{13}}{\sigma_{23}}};
\lambda_{2} = \pm \sqrt{\dfrac{\sigma_{12}\sigma_{23}}{\sigma_{13}}};
\lambda_{3} = \pm \sqrt{\dfrac{\sigma_{34}\sigma_{13}}{\sigma_{14}}};
\lambda_{4} = \pm \sqrt{\dfrac{\sigma_{34}\sigma_{14}}{\sigma_{13}}}
\label{eq:eq12}
\end{equation}

and we subtitute \eqref{eq:eq12} into \eqref{eq:eq1}, \eqref{eq:eq2}, \eqref{eq:eq3} and \eqref{eq:eq4}. We can derive 

\begin{equation}
Var(\delta_{1}) = \sigma_{1}^2 - \dfrac{\sigma_{12}\sigma_{13}}{\sigma_{23}};
Var(\delta_{2}) = \sigma_{2}^2 - \dfrac{\sigma_{12}\sigma_{23}}{\sigma_{13}};
Var(\delta_{3}) = \sigma_{3}^2 - \dfrac{\sigma_{34}\sigma_{13}}{\sigma_{14}};
Var(\delta_{4}) = \sigma_{4}^2 - \dfrac{\sigma_{34}\sigma_{14}}{\sigma_{13}}
\label{eq:eq13}
\end{equation}

Also, subtitute $\lambda_{1}$ &  $\lambda_{3}$ into \eqref{eq:eq6}, leading to a equation of 

\begin{equation}
\phi = \sqrt{\dfrac{\sigma_{23}\sigma_{14}}{\sigma_{12}\sigma_{34}}};
\label{eq:eq14}
\end{equation}

In \eqref{eq:eq12}, \eqref{eq:eq13}, and \eqref{eq:eq14}, we can express each parameter in terms of the $\sigma$s.

## Apply the two-step rule for model identification
We considered the CFA part and assumed that all the parameters have nonzero values. By applying the two-indicator rule, we found that there are two nonzero loadings for each factor and all of the observed variables ($x$) are only influenced by one factor. Also, there is no zero element in $\Phi$, suggesting these two factors have relationships between each other. Likewise, each variance of the $\delta$ is not correlated with others. According to these criteria, we found the the CFA part is identifided. Since the present model did not have the strutural part, we could claim that this model is identified.

## How about if $\xi_{1}$ $\rightarrow$ $\xi_{2}$ instead? Repeat 1 & 2.
We can clearly see that the $\sum$ is still the same but a new eqation is generated to indciate the direct effect from $\xi_{1}$ $\rightarrow$ $\xi_{2}$. Indeed, $\xi_{2}$ should be represented as $\eta_{1}$ under the representation of the JKW model. Thus, we have 
\begin{equation}
\eta_{1} = \gamma_{11}\xi_{1} + \zeta_{1}
\label{eq:eq15}
\end{equation}
and $\Phi$ become a vector $\Phi$=$\phi$=$1$. Also, $\Psi$ = $\psi$ = $Var(\zeta_{1})$. Since we fix the $Var(\xi_{1})$ = $Var(\eta_{1})$ = $1$ for comparisons (usually we fix the loadings), we have a fixed $Var(\zeta_{1})$ and it can be expressed as $1$ - $\gamma_{11}^2$ as well.







All of the elements in the new model are the same, except for \eqref{eq:eq6}, \eqref{eq:eq7}, \eqref{eq:eq8}, and \eqref{eq:eq9}. These four equations have been changed since the covariance between $\xi_{1}$ and $\xi_{2}$ is replaced by the direct effect. In the same vein, 


\begin{equation}
\sigma_{13} = \lambda_{1}\lambda_{3}\phi
\label{eq:eq6}
\end{equation}

\begin{equation}
\sigma_{14} = \lambda_{1}\lambda_{4}\phi
\label{eq:eq7}
\end{equation}

\begin{equation}
\sigma_{23} = \lambda_{2}\lambda_{3}\phi
\label{eq:eq8}
\end{equation}

\begin{equation}
\sigma_{24} = \lambda_{2}\lambda_{4}\phi
\label{eq:eq9}
\end{equation}





## The JKW model
In the JKW model, let $Y$ and $X$ be the deviation scores from means, where $Y$ vector has $p$ variables and $X$ vector has $q$ variables. Let $\eta$ be the vector of endogenous latent variables, which has $m$ variables, and $\xi$ be the vector of exogenous latent variables, which has $n$ variables. Let $\zeta$, $\delta$ and $\epsilon$ be the the vectors of disturbances ($m$ variables), unique factors of $X$ ($q$ variables), and unique factors of $Y$ ($p$ variables) respectively. Since $Y$ and $X$ are the deviation scores from means, we have 
$$E(X) = 0 ; E(Y) = 0$$, and we further assume 
$$E(\zeta) = 0;E(\delta) = 0;E(\epsilon) = 0$$
Also, there are some assumptions of no correlations between vectors. That is, $\epsilon$ is uncorrelated with $\eta$ & $\xi$, $\delta$ is uncorrelated with $\eta$ & $\xi$, $\xi$ is uncorrelated with $\zeta$, and $\epsilon$, $\delta$ & $\zeta$ are mutually uncorrelated. Most of all, there are two important models in JKW model, including the *structural model* and the *measurement model*. The structural model can be represented as 
$$\eta_{m \times 1} = B_{m \times m}\eta_{m \times 1} + \Gamma_{m \times n}\xi_{n \times 1} + \zeta_{m \times 1}$$, and the measurement model can be represented as 
$$Y_{p \times 1} = \Lambda_{Y_{p \times m}}\eta_{m \times 1} + \epsilon_{p \times 1}$$
$$X_{q \times 1} = \Lambda_{X_{q \times n}}\xi_{n \times 1} + \delta_{q \times 1}$$.

Further define 4 covariance matrix for exogenous variables.
$$\Phi = COV(\xi)$$
$$\Psi = COV(\zeta)$$
$$\Theta_{\epsilon} = COV(\epsilon)$$
$$\Theta_{\delta} = COV(\delta)$$

## The BW model
In the BW model, the representations can be reduced to a single equation. Let $\xi^*$ be the vector of independent variables and  $\eta^*$ be the vector of dependent variables. All variables are deviations from means. Then the relationship between $\xi^*$ and $\eta^*$ can be expressed as 
$$\eta^* = B^*\eta^* + \Gamma^*\xi^*$$
with the definition of covariance matrix
$$\Phi^* = COV(\xi^*)$$

## Represent the JKW model in terms of the BW model
According to the definition given above, we can represent the JKW model using the BW model. First of all, we have $$\eta^* = B^*\eta^* + \Gamma^*\xi^*$$ in the BW model.
$\eta$, $X$ & $Y$ can be regarded as the dependent variables in $\eta^*$, $\zeta$, $\epsilon$, & $\delta$ can be regarded as the independent variables in $\xi^*$, $B$ & $\Lambda_{Y}$ can be regarded as the coefficients in $B^*$, and $\Gamma$ & $\Lambda_{X}$ can be regarded as the coefficients in $\Gamma^*$. Thus, we can express them by the matrices

\setcounter{MaxMatrixCols}{20}

$\begin{bmatrix}
    \eta_{1} \\
    \eta_{2} \\
    \vdots \\
    \eta_{m} \\
    x_{1} \\
    x_{2} \\
    \vdots \\
    x_{q} \\
    y_{1} \\
    y_{2} \\
    \vdots \\
    y_{p}
\end{bmatrix}$
= 
$\begin{bmatrix}
    \beta_{11} & \beta_{12} & \dots & \beta_{1m} & 0_{11} & 0_{12} & \dots & 0_{1q} & 0_{11} & 0_{12} & \dots & 0_{1p} \\
    \beta_{21} & \beta_{22} & \dots & \beta_{2m} & 0_{21} & 0_{22} & \dots & 0_{2q} & 0_{21} & 0_{22} & \dots & 0_{2p} \\
    \vdots &  \vdots  &  \ddots &  \vdots  & \vdots & \vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots  \\
    \beta_{m1} & \beta_{m2} & \dots & \beta_{mm} & 0_{m1} & 0_{m2} & \dots & 0_{mq} & 0_{m1} & 0_{m2} & \dots & 0_{mp} \\
    0_{11} & 0_{12} & \dots & 0_{1m} & 0_{11} & 0_{12} & \dots & 0_{1q} & 0_{11} & 0_{22} & \dots & 0_{1p} \\
    0_{21} & 0_{22} & \dots & 0_{2m} & 0_{21} & 0_{22} & \dots & 0_{2q} & 0_{21} & 0_{22} & \dots & 0_{2p} \\
     \vdots &  \vdots  &  \ddots &  \vdots  & \vdots & \vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots  \\
    0_{q1} & 0_{q2} & \dots & 0_{qm} & 0_{q1} & 0_{q2} & \dots & 0_{qq} & 0_{11} & 0_{22} & \dots & 0_{qp} \\
    \lambda_{y_{11}} & \lambda_{y_{12}} & \dots & \lambda_{y_{1m}} & 0_{11} & 0_{12} & \dots & 0_{1q} & 0_{11} & 0_{22} & \dots & 0_{1p} \\
    \lambda_{y_{21}} & \lambda_{y_{22}} & \dots & \lambda_{y_{2m}} & 0_{21} & 0_{22} & \dots & 0_{2q} & 0_{21} & 0_{22} & \dots & 0_{2p} \\
     \vdots &  \vdots  &  \ddots &  \vdots  & \vdots & \vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots  \\
    \lambda_{y_{p1}} & \lambda_{y_{p2}} & \dots & \lambda_{y_{pm}} & 0_{p1} & 0_{p2} & \dots & 0_{pq} & 0_{p1} & 0_{p2} & \dots & 0_{pp} \\
\end{bmatrix}$
$\begin{bmatrix}
    \eta_{1} \\
    \eta_{2} \\
    \vdots \\
    \eta_{m} \\
    x_{1} \\
    x_{2} \\
    \vdots \\
    x_{q} \\
    y_{1} \\
    y_{2} \\
    \vdots \\
    y_{p}
\end{bmatrix}$
$+$


$\begin{bmatrix}
    \gamma_{11} & \gamma_{12} & \dots & \gamma_{1n} & 1 & 0_{12} & \dots & 0_{1m} & 0_{11} & 0_{12} & \dots & 0_{1q} & 0_{11} & 0_{12} & \dots & 0_{1p} \\
    \gamma_{21} & \gamma_{22} & \dots & \gamma_{2n} & 0_{21} & 1 & \dots & 0_{2m} & 0_{21} & 0_{22} & \dots & 0_{2q} & 0_{21} & 0_{22} & \dots & 0_{2p} \\
    \vdots &  \vdots  &  \ddots &  \vdots  & \vdots & \vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots  \\
    \gamma_{m1} & \gamma_{m2} & \dots & \gamma_{mn} & 0_{m1} & 0_{m2} & \dots & 1 & 0_{m1} & 0_{m2} & \dots & 0_{mq} & 0_{m1} & 0_{m2} & \dots & 0_{mp} \\
    \lambda_{x_{11}} & \lambda_{x_{12}} & \dots & \lambda_{x_{1n}} & 0_{11} & 0_{12} & \dots & 0_{1m} & 1 & 0_{22} & \dots & 0_{1q} & 0_{11} & 0_{12} & \dots & 0_{1p}\\
    \lambda_{x_{21}} & \lambda_{x_{22}} & \dots & \lambda_{x_{2n}} & 0_{21} & 0_{22} & \dots & 0_{2m} & 0_{21} & 1 & \dots & 0_{2q} & 0_{21} & 0_{22} & \dots & 0_{2p}\\
     \vdots &  \vdots  &  \ddots &  \vdots  & \vdots & \vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots  \\
    \lambda_{x_{q1}} & \lambda_{x_{q2}} & \dots & \lambda_{x_{qn}} & 0_{q1} & 0_{q2} & \dots & 0_{qm} & 0_{q1} & 0_{q2} & \dots & 1  & 0_{q1} & 0_{q2} & \dots & 0_{qp}\\
    0_{11} & 0_{12} & \dots & 0_{1n} & 0_{11} & 0_{12} & \dots & 0_{1m} & 0_{11} & 0_{12} & \dots & 0_{1q} & 1 & 0_{22} & \dots & 0_{1p} \\
    0_{21} & 0_{22} & \dots & 0_{2n} & 0_{21} & 0_{22} & \dots & 0_{2m} & 0_{21} & 0_{22} & \dots & 0_{2q} & 0_{21} & 1 & \dots & 0_{1p}\\
     \vdots &  \vdots  &  \ddots &  \vdots  & \vdots & \vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots &\vdots &\vdots & \ddots & \vdots \\
    0_{p1} & 0_{p2} & \dots & 0_{pn} & 0_{p1} & 0_{p2} & \dots & 0_{pm} & 0_{p1} & 0_{p2} & \dots & 0_{pq} & 0_{p1} & 0_{p2} & \dots & 1 \\
\end{bmatrix}$
$\begin{bmatrix}
    \xi_{1} \\
    \xi_{2} \\
    \vdots \\
    \xi_{n} \\
    \zeta{1} \\
    \zeta{2} \\
    \vdots \\
    \zeta{m} \\
    \delta{1} \\
    \delta{2} \\
    \vdots \\
    \delta{q} \\
    \epsilon{1} \\
    \epsilon{2} \\
    \vdots \\
    \epsilon{p}
\end{bmatrix}$

The representations can also be reduced to the matrices with several blocks 
according to the expressions in the JKW model. That is, 

$$\begin{bmatrix}
    \eta_{m \times 1} \\
    \hline
    X_{q \times 1} \\
    \hline
    Y_{p \times 1} \\
\end{bmatrix}
=
\left[
\begin{array}{c|c|c}
B_{m \times m} & 0_{m \times q} & 0_{m \times p}\\
\hline
0_{q \times m} & 0_{q \times q} & 0_{q \times p}\\
\hline
\Lambda_{y_{p \times m}} & 0_{p \times q} & 0_{p \times p} 
\end{array}
\right]
\begin{bmatrix}
    \eta_{m \times 1} \\
    \hline
    X_{q \times 1} \\
    \hline
    Y_{p \times 1} \\
\end{bmatrix}
+
\left[
\begin{array}{c|c|c|c}
\Gamma_{m \times n} & I_{m \times m} & 0_{m \times q} & 0_{m \times p}\\
\hline
\Lambda_{x_{q \times n}} & 0_{q \times m} & I_{q \times q} & 0_{q \times p}\\
\hline
0_{p \times n} & 0_{p \times m} & 0_{p \times q} & I_{p \times p}\\
\end{array}
\right]
\begin{bmatrix}
    \xi_{n \times 1} \\
    \hline
    \zeta_{m \times 1} \\
    \hline
    \delta_{q \times 1} \\
    \hline
    \epsilon_{p \times 1} \\
\end{bmatrix}$$

To simplify the demonstrations, we further reduce the representations to 

\begin{equation}
\begin{bmatrix}
    \eta_{m \times 1} \\
    X_{q \times 1} \\
    Y_{p \times 1} \\
\end{bmatrix}
=
\left[\begin{array}{@{}c|c@{}}
    \begin{matrix}
    B_{m \times m} \\
    0_{q \times m} \\
    \Lambda_{y_{p \times m}}
    \end{matrix} 
    & 0_{(m+q+p) \times (q+p)}
\end{array}
\right]
\begin{bmatrix}
    \eta_{m \times 1} \\
    X_{q \times 1} \\
    Y_{p \times 1} \\
\end{bmatrix}
+
\left[\begin{array}{@{}c|c@{}}
    \begin{matrix}
    \Gamma_{m \times n} \\
    \Lambda_{x_{q \times n}} \\
    0_{p \times n}
    \end{matrix} 
    & I_{(m+q+p) \times (m+q+p)}
\end{array}
\right]
\begin{bmatrix}
    \xi_{n \times 1} \\
    \zeta_{m \times 1} \\
    \delta_{q \times 1} \\
    \epsilon_{p \times 1} \\
\end{bmatrix}
\label{eq:myeqn}
\end{equation}

Also we re-write the BW model in greater details as \eqref{eq:myeqn2} below.

\begin{equation}
\eta^*_{(m+q+p) \times 1} = B^*_{(m+q+p) \times (m+q+p)}\eta^*_{(m+q+p) \times 1} + \Gamma^*_{(m+q+p) \times (n+m+q+p)}\xi^*_{(n+m+q+p) \times 1}
\label{eq:myeqn2}
\end{equation}

where
\begin{equation}
\eta^* = \begin{bmatrix}
    \eta \\
    X \\
    Y \\
\end{bmatrix};
B^* = \left[\begin{array}{@{}c|c@{}}
    \begin{matrix}
    B \\
    0 \\
    \Lambda_{y}
    \end{matrix} 
    & 0
\end{array}
\right];
\Gamma^* = 
\left[\begin{array}{@{}c|c@{}}
    \begin{matrix}
    \Gamma \\
    \Lambda_{x} \\
    0
    \end{matrix} 
    & I
\end{array}
\right];
\xi^* = 
\begin{bmatrix}
    \xi \\
    \zeta \\
    \delta \\
    \epsilon \\
\end{bmatrix}
\label{eq:myeqn4}
\end{equation}.

According to \eqref{eq:myeqn4}, we can find that \eqref{eq:myeqn} and \eqref{eq:myeqn2} are exactly the same, where \eqref{eq:myeqn} is the representations of the JKW model in terms of \eqref{eq:myeqn2}, the BW model.

In addition, the covariance matrix in the BW model
$$\Phi^* = COV(\xi^*)$$
can also be expressed by using $\Phi$, $\Psi$, $\Theta_{\epsilon}$ and $\Theta_{\delta}$ in the JKW model. Since $\zeta$, $\epsilon$, & $\delta$ can be regarded as the independent variables in $\xi^*$ as shown in \eqref{eq:myeqn3} (which is the same representation in part of \eqref{eq:myeqn4}),

\begin{equation}
\xi^*_{(n+m+q+p)} = 
\begin{bmatrix}
    \xi_{n \times 1} \\
    \zeta_{m \times 1} \\
    \delta_{q \times 1} \\
    \epsilon_{p \times 1} \\
\end{bmatrix}
\label{eq:myeqn3}
\end{equation}

we can demonstrated that 
\begin{equation}
\Phi^* = 
COV(\xi^*) =
\left[
\begin{array}{c|c|c|c}
\Phi & 0 & 0 & 0\\
\hline
0 & \Psi & 0 & 0 \\
\hline
0 & 0 & \Theta_{\delta} & 0 \\
\hline
0 & 0 & 0 & \Theta_{\epsilon}
\end{array}
\right]
\label{eq:myeqn5}
\end{equation}

where the covariance structures of these two models are similar. 

Also we derive the implied covariance matrix of the BW model,
$$
\Sigma_{\eta^*\eta^{*\prime}}(\Theta) = E(\eta^*\eta^{*\prime}) = (I-B^*)^{-1}\Gamma^*\Phi^*\Gamma^{*\prime}(I-B^*)^{-1\prime}
$$
where each element can be demonstrated by using the JKW model as shown in \eqref{eq:myeqn4} and \eqref{eq:myeqn5}. Note that the expression is as same as the equation (2.6) in the article *Bentler, P. M., & Weeks, D. G. (1980). Linear structural equations with latent variables. Psychometrika, 45(3), 289-308* ($\Sigma = GB^{-1}\Gamma\Phi\Gamma^{\prime}B^{-1\prime}G^{\prime}$). There are concetually the same but have slightly differences in the expressions. 

## Discussion
In those representations, it is shown that either the JKW model can be exactly represented in terms of the BW model. Also, as shown in above matrices, there are several zero matrices or identity matrices when elements of the JKW models are used in support of the BW model, implying that the JKW model has much more constraints relative to the BW model. For example, in the BW model, the relationship between $\delta$ and $\epsilon$ can be specified in $\Phi^*$; rather, the JKW model directly assumes that $\epsilon$, $\delta$ & $\zeta$ are mutually uncorrelated. Also, the relationship between $X$ and $Y$ can also be directly specified in $B^*$. Therefore, using the BW model, we can understand more relationships, which might not be able to directly explore in the JKW model. It is also the major reason why we need an alternative representation than the JKW model.