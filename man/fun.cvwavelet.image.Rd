\name{fun.cvwavelet.image}
\alias{fun.cvwavelet.image}
\title{Wavelet reconstruction of image by level-dependent Cross-Validation}
\description{
This function reconstructs image by level-dependent cross-validation wavelet shrinkage.
}
\usage{
fun.cvwavelet.image(images, imagewd,
    cv.optlevel, cv.bsize=c(1,1), cv.kfold, cv.tol=0.1^3, cv.maxiter=100,
    impute.tol=0.1^3, impute.maxiter=100,
    filter.number=10, family="DaubLeAsymm", thresh.type="soft", ll=3)
}
\arguments{
\item{images}{noisy image}
\item{imagewd}{two-dimensional wavelet transform}
\item{cv.optlevel}{thresholding level}
\item{cv.bsize}{block size of cross-validation}
\item{cv.kfold}{the number of fold of cross-validation}
\item{cv.tol}{tolerance for cross-validation}
\item{cv.maxiter}{maximum iteration for cross-validation}
\item{impute.tol}{tolerance for imputation}
\item{impute.maxiter}{maximum iteration for imputation}
\item{filter.number}{specifies the smoothness of wavelet in the decomposition (argument of WaveThresh)}
\item{family}{specifies the family of wavelets ``DaubExPhase" or ``DaubLeAsymm" (argument of WaveThresh)}
\item{thresh.type}{specifies the type of thresholding ``hard" or ``soft" (argument of WaveThresh)}
\item{ll}{specifies the lowest level to be thresholded}
}
\details{
This function performs level-dependent cross-validation wavelet shrinkage for two-dimensional data.
}
\value{
\item{imagecv}{reconstruction of image by level-dependent cross-validation wavelet shrinkage}
\item{cvthresh}{threshold values by level-dependent cross-validation}
}
\seealso{
\code{\link{fun.cvtype.image}}, \code{\link{fun.cvimpute.image.by.wavelet}}, \cr
\code{\link{fun.cvwavelet.image.after.impute}}.
}
\examples{ 
# Generate Noisy Lennon Image
data(lennon)
sdimage <- sd(as.numeric(lennon))
nlennon <- ncol(lennon); nlevel <- log2(ncol(lennon)); optlevel <- c(3:(nlevel-1))
set.seed(55)
lennonnoise <- lennon+matrix(rnorm(nlennon^2, 0, sdimage), nlennon, nlennon)

# Level-dependent Cross-validation Thresholding
lennonwd <- imwd(lennonnoise)
lennoncv <- fun.cvwavelet.image(images=lennonnoise, imagewd=lennonwd,
                       cv.optlevel=optlevel, cv.bsize=c(1,1), cv.kfold=10)$imagecv
image(lennoncv, axes=FALSE, col=gray(0:100/100), main="Level-dependent CV")
}
\keyword{nonparametric}
