\name{fun.dopp}
\alias{fun.dopp}
\title{Doppler function}
\description{
This function generates Doppler function values for \eqn{n}{n} equally spaced points in \eqn{[0,1]}{[0,1]}.
}
\usage{
fun.dopp(n=1024)
}
\arguments{
\item{n}{the number of data}
}
\details{
Doppler function is introduced by Donoho and Johnstone (1994) and is useful test function
evaluating a wavelet shrinkage method.
}
\value{
Doppler function values \eqn{f(\frac{i}{n}), i=1,\ldots,n}{f(i/n), i=1,\ldots,n} and its variability
\eqn{||f|| = \frac{\sum_{i=1}^n (f_i - \bar f)^2}{n-1}}{||f|| = \sum_{i=1}^n (f_i - mena(f))^2 / (n-1)}
where \eqn{\bar f = \frac{\sum_{i=1}^n f_i}{n}}{mena(f) = \sum_{i=1}^n f_i / n}.
}
\references{
Donoho, D.L. and Johnstone, I.M. (1994) Ideal spatial adaptation by wavelet shrinkage. 
\emph{Biometrika}, \bold{81}, 425--455.
}
\seealso{
\code{\link{fun.heav}}, \code{\link{fun.poly}}, \code{\link{fun.fg1}}.
}
\examples{
testdopp <- fun.dopp(1024)
plot(testdopp$x, testdopp$meanf, xlab="", ylab="", 
     main="Plot of Doppler function", type="l")
}
\keyword{nonparametric}
