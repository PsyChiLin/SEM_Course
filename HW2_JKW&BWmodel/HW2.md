---
title: 'Home Work 2'
authors:
- affiliation: 1
  name: Chi-Lin Yu
output: pdf_document
affiliations:
- index: 1
  name: Department of Psychology, National Taiwan University, Taiwan
---
# HW2 : Represent the JKW model in terms of the BW model.



## JKW model
In the JKW model, let $Y$ and $X$ be the deviation scores from means, where $Y$ vector has $p$ variables and $X$ vector has $q$ variables. Let $\eta$ be the vector of endogenous latent variables, which has $m$ variables, and $\xi$ be the vector of exogenous latent variables, which has $n$ variables. Let $\zeta$, $\delta$ and $\epsilon$ be the the vectors of distrubances, unique factors of $X$, and unique factors of $Y$ respectively.
Thus, we have 
$$E(X) = 0 ; E(Y) = 0$$, and we further assume 
$$E(\zeta) = 0;E(\delta) = 0;E(\epsilon) = 0$$
Also, there are some assumptions of no correlations between vectors. That is, $\epsilon$ is uncorrelated with $\eta$ & $\xi$, $\delta$ is uncorrelated with $\eta$ & $\xi$, $\xi$ is uncorrelated with $\zeta$, and $\epsilon$, $\delta$ & $\zeta$ are muually uncorrelated.

Most of all, there are two important models in JKW model, including the *structural model* and the *measuement model*. The structural model can be represented as 
$$\eta_{m \times 1} = B_{m \times m}\eta_{m \times 1} + \Gamma_{m \times n}\xi_{n \times 1} + \zeta_{m \times 1}$$, and the measurment model can be represented as 
$$Y_{p \times 1} = \Lambda_{Y_{p \times m}}\eta_{m \times 1} + \epsilon_{p \times 1}$$
$$X_{q \times 1} = \Lambda_{X_{q \times n}}\xi_{n \times 1} + \delta_{q \times 1}$$.

Further define 4 corvariance matrix for exoegenous variables.
$$\Phi = COV(\xi)$$
$$\Psi = COV(\zeta)$$
$$\Theta_{\epsilon} = COV(\epsilon)$$
$$\Theta_{\delta} = COV(\delta)$$

## BW model
In the BW model, the representations can be reduced to a single equation. Let $\xi^*$ be the vector of independent variables and  $\eta^*$ be the vector of dependent variables. And all variables are deviations from means. Then the relationship between $\xi^*$ and $\eta^*$ can be expressed as 
$$\eta^* = B^*\eta^* + \Gamma^*\xi^*$$
with the definition of corvariance matrix
$$\Phi^* = COV(\xi^*)$$

## Represent the JKW model in terms of the BW model
According to the definiation given above, we can express the JKW model using the BW model. First of all, we have $$\eta^* = B^*\eta^* + \Gamma^*\xi^*$$ in the BW model.
$\eta$, $X$ & $Y$ can be regarded as the dependent variables in $\eta^*$, $\zeta$, $\epsilon$, & $\delta$ can be regarded as the independent variables in $\xi^*$, $B$ & $\Lambda_{Y}$ can be regarded as the coeficients in $B^*$, and $\Gamma$ & $\Lambda_{X}$ can be regarded as the coeficients in $\Gamma^*$. Thus, we can express them by the matrices

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
Futhermore, the representations can also be reduced to the matrices with several blocks 
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

We can further reduce the representations to 

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

And when we re-write the BW model in greater details as \eqref{eq:myeqn2} below.

\begin{equation}
\eta^*_{(m+q+p) \times 1} = B^*_{(m+q+p) \times (m+q+p)}\eta^*_{(m+q+p) \times 1} + \Gamma^*_{(m+q+p) \times (n+m+q+p)}\xi^*_{(n+m+q+p) \times 1}
\label{eq:myeqn2}
\end{equation}

We can find that \eqref{eq:myeqn} and \eqref{eq:myeqn2} are exactly the same, where \eqref{eq:myeqn} is the representations of the JKW model in terms of \eqref{eq:myeqn2}, the BW model.

In addition, the covariance matrix in the BW model
$$\Phi^* = COV(\xi^*)$$
can also be expressed by using $\Phi$, $\Psi$, $\Theta_{\epsilon}$ and $\Theta_{\delta}$ in the JKW model. Since $\zeta$, $\epsilon$, & $\delta$ can be regarded as the independent variables in $\xi^*$ as shown in \eqref{eq:myeqn3},

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

we can show that 
$$
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
$$

