\name{cvimpute.image.by.wavelet}
\alias{cvimpute.image.by.wavelet}
\title{Imputation for two-dimensional data by wavelet}
\description{
This function performs imputation for two-dimensional test dataset of cross-validation
given test dataset index and initial values.
}
\usage{
cvimpute.image.by.wavelet(images, impute.index1, impute.index2, 
   impute.tol=0.1^3, impute.maxiter=100, filter.number=2, ll=3)
}
\arguments{
\item{images}{noisy image}
\item{impute.index1}{test dataset row index according to cross-validation scheme}
\item{impute.index2}{test dataset column index according to cross-validation scheme}
\item{impute.tol}{tolerance for imputation}
\item{impute.maxiter}{maximum iteration for imputation}
\item{filter.number}{specifies the smoothness of wavelet in the decomposition (argument of WaveThresh)}
\item{ll}{specifies the lowest level to be thresholded}
}
\details{
In wavelet context, test dataset of cross-validation is missing values.
Based on h-likelihood concept and penalized least squares,
this function performs imputation by wavelet for missing dataset, given the missing dataset.
Lee and Nelder (1996, 2001) introduced the hierarchical likelihood as an extended likelihood
for general models that include unobserved random variables such as missing.
Following Lee and Nelder (1996, 2001), treat the missing values as random parameters
and it has been known that a wavelet shrinkage estimator can be formulated by penalized
least squares problem (Antoniadis and Fan, 2001). This arguments lead to the iterative
algorithm for imputing the missing values based on wavelet shrinkage.
}
\value{
Imputed values according to cross-validation scheme.
}
\references{
Antoniadis, A. and Fan, J. (2001) Regularization of wavelet approximations. 
\emph{Journal of the American Statistical Association}, \bold{96}, 939--962.

Lee, Y. and Nelder, J.A. (1996) Hierarchical generalised linear models (with discussion). 
\emph{Journal of the Royal Statistical Society Ser. B}, \bold{58}, 619--678.

Lee, Y. and Nelder, J.A. (2001) Hierarchical generalised linear models: A synthesis of generalised
linear models, random-effect models and structured dispersions. \emph{Biometrika}, \bold{88}, 987--1006.
}
\seealso{
\code{\link{cvtype.image}}, \code{\link{cvwavelet}}, \code{\link{cvimpute.by.wavelet}}, 

\code{\link{cvwavelet.after.impute}}, \code{\link{cvwavelet.image}}, 

\code{\link{cvwavelet.image.after.impute}}
}
\keyword{nonparametric}
