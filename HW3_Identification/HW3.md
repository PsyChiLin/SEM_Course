---
title: 'HomeWork 3'
author: Chi-Lin Yu (R05227101)
output: pdf_document

---

# Q1 
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

The represenattions of the $\sigma$ in the new model are the same, except for \eqref{eq:eq6}, \eqref{eq:eq7}, \eqref{eq:eq8}, and \eqref{eq:eq9}. These four equations have been changed since the covariance between $\xi_{1}$ and $\xi_{2}$ is replaced by the direct effect $\gamma_{11}$. 


\begin{equation}
\sigma_{13} = \lambda_{1}\lambda_{3}\gamma_{11}
\label{eq:eq16}
\end{equation}

\begin{equation}
\sigma_{14} = \lambda_{1}\lambda_{4}\gamma_{11}
\label{eq:eq17}
\end{equation}

\begin{equation}
\sigma_{23} = \lambda_{2}\lambda_{3}\gamma_{11}
\label{eq:eq18}
\end{equation}

\begin{equation}
\sigma_{24} = \lambda_{2}\lambda_{4}\gamma_{11}
\label{eq:eq19}
\end{equation}

In the same vein, the representation of parameters in term of $\sigma$ are still the same as \eqref{eq:eq12} and \eqref{eq:eq13}. The only difference is that 

\begin{equation}
\gamma_{11} = \sqrt{\dfrac{\sigma_{23}\sigma_{14}}{\sigma_{12}\sigma_{34}}}
\label{eq:eq20}
\end{equation}

That is, we can express each parameter in the new model in terms of the elements of $\sum$ using \eqref{eq:eq12}, \eqref{eq:eq13}, and \eqref{eq:eq20}.

Furthermore, we also apply the two-step rule for identification of the new model. In the CFA model, we can use the aforthmentioned two-indicator rule to show that this measurement part is identified. About the structural part, we can show that the model is identified by using null B rue and recursive rule due to the reason that we have only one $\eta$ in our model.

## Are these two models equivalent?
In summary, these two models are both identified and indeed equivalent. As shown in \eqref{eq:eq12}, \eqref{eq:eq13}, the expressions of the parameters in these two models are roughly the same. The different expressions are shown in \eqref{eq:eq14} and \eqref{eq:eq20}. However, the elements to represent those parameters are exactly the same. In other words, these two model (model 1 & model 2) can give identical covariance matrix, athough they use different parameters. Therefore, we said 

\begin{equation}
\sum(\hat{\theta_{1}}) = \sum(\hat{\theta_{2}})
\label{eq:eq21}
\end{equation}

, where $\hat{\theta_{1}}$ and $\hat{\theta_{2}}$ are different parameters in model 1 & 2. We can conclude that these two model are equivalent.

# Q2
With the scales of the latent variables properly fixed, is the following model identified?

## Express each parameter in terms of the elements of $\sum$ 


## Discussion