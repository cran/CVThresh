\name{fun.cvtype.image}
\alias{fun.cvtype.image}
\title{Generating test dataset index of two-dimensional data for cross-validation}
\description{
This function generates test dataset index of two-dimensional data for cross-validation
}
\usage{
fun.cvtype.image(n, cv.bsize=c(1,1), cv.kfold)
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
\code{\link{fun.cvtype}}, \code{\link{fun.cvwavelet}}, \code{\link{fun.cvimpute.by.wavelet}}, 

\code{\link{fun.cvwavelet.after.impute}}, \code{\link{fun.cvwavelet.image}}, 

\code{\link{fun.cvimpute.image.by.wavelet}}, \code{\link{fun.cvwavelet.image.after.impute}}
}
\examples{
# Two-dimensional 4-fold cross-validation with block size 2*2
out <- fun.cvtype.image(n=c(256,256), cv.bsize=c(2,2), cv.kfold=4)
}
\keyword{nonparametric}
