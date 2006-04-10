\name{cvwavelet.image.after.impute}
\alias{cvwavelet.image.after.impute}
\title{Cross-Validation Wavelet Shrinkage for two-dimensional data after imputation}
\description{
This function performs level-dependent cross-validation wavelet shrinkage for two-dimensional data 
given the cross-validation scheme and imputation values.
}
\usage{
cvwavelet.image.after.impute(images, imagewd, imageimpute,
   cv.index1=cv.index1, cv.index2=cv.index2,
   cv.optlevel=cv.optlevel, cv.tol=cv.tol, cv.maxiter=cv.maxiter,
   filter.number=10, family="DaubLeAsymm", thresh.type="soft", ll=3)
}
\arguments{
\item{images}{noisy image}
\item{imagewd}{two-dimensional wavelet transform}
\item{imageimpute}{two-dimensional imputed values according to cross-validation scheme}
\item{cv.index1}{test dataset row index according to cross-validation scheme}
\item{cv.index2}{test dataset column index according to cross-validation scheme}
\item{cv.optlevel}{thresholding levels}
\item{cv.tol}{tolerance for cross-validation}
\item{cv.maxiter}{maximum iteration for cross-validation}
\item{filter.number}{specifies the smoothness of wavelet in the decomposition (argument of WaveThresh)}
\item{family}{specifies the family of wavelets ``DaubExPhase" or ``DaubLeAsymm" (argument of WaveThresh)}
\item{thresh.type}{specifies the type of thresholding ``hard" or ``soft" (argument of WaveThresh)}
\item{ll}{specifies the lowest level to be thresholded}
}
\details{
Calculating thresholding values and reconstructing noisy image
given cross-validation scheme and imputation.
}
\value{
Reconstruction of images and thresholding values by level-dependent cross-validation
\item{imagecv}{reconstruction of images}
\item{cvthresh}{thresholding values by level-dependent cross-validation}
}
\seealso{
\code{\link{cvwavelet.image}}, \code{\link{cvtype.image}}, \code{\link{cvimpute.image.by.wavelet}}.
}
\keyword{nonparametric}
