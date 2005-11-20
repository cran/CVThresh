\name{fun.cvimpute.by.wavelet}
\alias{fun.cvimpute.by.wavelet}
\title{Imputation by wavelet}
\description{
This function performs imputation for test dataset of cross-validation
given test dataset index and initial values.
}
\usage{
fun.cvimpute.by.wavelet(y, impute.index, impute.tol=0.1^3, 
    impute.maxiter=100, impute.vscale="independent",
    filter.number=10, family="DaubLeAsymm", thresh.type="soft", ll=3)
}
\arguments{
\item{y}{observation}
\item{impute.index}{test dataset index for cross-validation}
\item{impute.tol}{tolerance for imputation}
\item{impute.maxiter}{maximum iteration for imputation}
\item{impute.vscale}{specifies whether variance is adjusted level-by-level or not. ``level" or ``independent"}
\item{filter.number}{specifies the smoothness of wavelet in the decomposition (argument of WaveThresh)}
\item{family}{specifies the family of wavelets ``DaubExPhase" or ``DaubLeAsymm" (argument of WaveThresh)}
\item{thresh.type}{specifies the type of thresholding ``hard" or ``soft" (argument of WaveThresh)}
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
\code{\link{fun.cvwavelet}}, \code{\link{fun.cvtype}}, \code{\link{fun.cvwavelet.after.impute}}.
}
\examples{
# 8-fold cross-validation scheme with block size 2
set.seed(1)
cv.index <- fun.cvtype(n=1024, cv.bsize=2, cv.kfold=8, cv.random=TRUE)$cv.index

# Generate 1024 observation from Heavisine function
snr <- 5
testdata <- fun.heav(1024)
x <- testdata$x
y <- testdata$meanf + rnorm(1024, 0, testdata$sdf / snr)

# Impute by wavelet
yimpute <- fun.cvimpute.by.wavelet(y=y, impute.index=cv.index)$yimpute

# Compare imputed values and observations
par(mar=0.1+c(4,4,2,1))
plot(y, yimpute, xlab="Observations", ylab="Imputed Values",
     main="Piecewise Polynomial", cex=0.5);abline(0,1)
}
\keyword{nonparametric}
