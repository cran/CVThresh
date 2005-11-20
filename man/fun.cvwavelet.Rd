\name{fun.cvwavelet}
\alias{fun.cvwavelet}
\title{Wavelet reconstruction by level-dependent Cross-Validation}
\description{
This function reconstructs the noise data by level-dependent cross-validation wavelet shrinkage.
}
\usage{
fun.cvwavelet(y=y, ywd=ywd, cv.optlevel, cv.bsize=1, cv.kfold, 
    cv.random=TRUE, cv.tol=0.1^3, cv.maxiter=100,
    impute.vscale="independent", impute.tol=0.1^3, impute.maxiter=100,
    filter.number=10, family="DaubLeAsymm", thresh.type ="soft", ll=3)
}
\arguments{
\item{y}{observation}
\item{ywd}{DWT object}
\item{cv.optlevel}{thresholding levels}
\item{cv.bsize}{block size of cross-validation}
\item{cv.kfold}{the number of fold of cross-validation}
\item{cv.random}{whether or not random cross-validation scheme should be used. Set cv.random=TRUE
  for random cross-validation scheme}
\item{cv.tol}{tolerance for cross-validation}
\item{cv.maxiter}{ maximum iteration for cross-validation}
\item{impute.vscale}{specifies whether variance is adjusted level-by-level or not. ``level" or ``independent"}
\item{impute.tol}{tolerance for imputation}
\item{impute.maxiter}{maximum iteration for imputation}
\item{filter.number}{specifies the smoothness of wavelet in the decomposition (argument of WaveThresh)}
\item{family}{specifies the family of wavelets ``DaubExPhase" or ``DaubLeAsymm" (argument of WaveThresh)}
\item{thresh.type}{specifies the type of thresholding ``hard" or ``soft" (argument of WaveThresh)}
\item{ll}{specifies the lowest level to be thresholded}
}
\details{
This function performs level-dependent cross-validation wavelet shrinkage.
}
\value{
\item{y}{observations}
\item{yimpute}{imputed values by provided cross-validation scheme}
\item{yc}{reconstruction by level-dependent cross-validation wavelet shrinkage}
\item{cvthresh}{threshold values by level-dependent cross-validation}
}
\seealso{
\code{\link{fun.cvtype}}, \code{\link{fun.cvimpute.by.wavelet}}, \code{\link{fun.cvwavelet.after.impute}}.
}
\examples{
data(ipd)
y <- as.numeric(ipd); n <- length(y); nlevel <- log2(n)
ywd <- wd(y)
out <- fun.cvwavelet(y=y, ywd=ywd, cv.optlevel=c(3:(nlevel-1)), 
                     cv.bsize=2, cv.kfold=4)

ts.plot(ts(out$yc, start=1229.98, deltat=0.02, frequency=50),
   main="Level-dependent Cross Validation", xlab = "Seconds", ylab="")
}
\keyword{nonparametric}
