\name{cvtype.image}
\alias{cvtype.image}
\title{Generating test dataset index of two-dimensional data for cross-validation}
\description{
This function generates test dataset index of two-dimensional data for cross-validation
}
\usage{
cvtype.image(n, cv.bsize=c(1,1), cv.kfold)
}
\arguments{
\item{n}{the size of image}
\item{cv.bsize}{two-dimensional block size of cross-validation}
\item{cv.kfold}{the number of fold of cross-validation}
}
\details{
This function provides indexes of two-dimensional cross-validation scheme. 
Only random cross-validation scheme is provided.
}
\value{
Two matrix representing test dataset index of each dimension for cross-validation.
\item{cv.index1}{each row is test dataset index of one dimension}
\item{cv.index2}{each row is test dataset index of the other dimension}
}
\seealso{
\code{\link{cvtype}}, \code{\link{cvwavelet}}, \code{\link{cvimpute.by.wavelet}}, 

\code{\link{cvwavelet.after.impute}}, \code{\link{cvwavelet.image}}, 

\code{\link{cvimpute.image.by.wavelet}}, \code{\link{cvwavelet.image.after.impute}}
}
\examples{
# Two-dimensional 4-fold cross-validation with block size 2*2
out <- cvtype.image(n=c(256,256), cv.bsize=c(2,2), cv.kfold=4)
}
\keyword{nonparametric}
