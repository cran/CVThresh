\name{cvwavelet.after.impute}
\alias{cvwavelet.after.impute}
\title{Cross-Validation Wavelet Shrinkage after imputation}
\description{
This function performs level-dependent cross-validation wavelet shrinkage 
given the cross-validation scheme and imputation values.
}
\usage{
cvwavelet.after.impute(y, ywd, yimpute,
    cv.index, cv.optlevel, cv.tol=0.1^3, cv.maxiter=100,
    filter.number=10, family="DaubLeAsymm", thresh.type="soft", ll=3)
}
\arguments{
\item{y}{observation}
\item{ywd}{DWT object}
\item{yimpute}{imputed values according to cross-validation scheme}
\item{cv.index}{test dataset index according to cross-validation scheme}
\item{cv.optlevel}{thresholding levels}
\item{cv.tol}{tolerance for cross-validation}
\item{cv.maxiter}{maximum iteration for cross-validation}
\item{filter.number}{specifies the smoothness of wavelet in the decomposition (argument of WaveThresh)}
\item{family}{specifies the family of wavelets ``DaubExPhase" or ``DaubLeAsymm" (argument of WaveThresh)}
\item{thresh.type}{specifies the type of thresholding ``hard" or ``soft" (argument of WaveThresh)}
\item{ll}{specifies the lowest level to be thresholded}
}
\details{
Calculating the threshold values and reconstructing noisy data \eqn{y}{y}, given the index of each testdata,
imputed values according to cross-validation scheme and discrete wavelet transform of \eqn{y}{y}.
}
\value{
Reconstruction and thresholding values by level-dependent cross-validation
\item{yc}{reconstruction}
\item{cvthresh}{thresholding values by level-dependent cross-validation}
}
\seealso{
\code{\link{cvwavelet}}, \code{\link{cvtype}}, \code{\link{cvimpute.by.wavelet}}.
}
\examples{
data(ipd)
y <- as.numeric(ipd); n <- length(y); nlevel <- log2(n)

set.seed(1)
cv.index <- cvtype(n=n, cv.bsize=2, cv.kfold=4, cv.random=TRUE)$cv.index
yimpute <- cvimpute.by.wavelet(y=y, impute.index=cv.index)$yimpute

ywd <- wd(y)

out <- cvwavelet.after.impute(y=y, ywd=ywd, yimpute=yimpute,
cv.index=cv.index, cv.optlevel=c(3:(nlevel-1)))

ts.plot(ts(out$yc, start=1229.98, deltat=0.02, frequency=50),
   main="Level-dependent Cross Validation", xlab = "Seconds", ylab="")

##### Specifying thresholding structure
# cv.optlevel <- c(3) # Threshold (level 3 to finest level) at the same time.
# cv.optlevel <- c(3, 5) # Threshold two groups of resolution levels,
                         # (level 3, 4) and  (level 5 to finest level).
# cv.optlevel <- c(3,4,5,6,7,8) # Threshold each resolution level 3 to 8.
}
\keyword{nonparametric}
