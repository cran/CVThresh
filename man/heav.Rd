\name{heav}
\alias{heav}
\title{Heavisine function}
\description{
This function generates Heavisine function values for \eqn{n} equally spaced points in \eqn{[0,1]}.
}
\usage{
heav(norx=1024)
}
\arguments{
\item{norx}{the number of data or x values in [0, 1]}
}
\details{
Heavisine function is introduced by Donoho and Johnstone (1994) and is useful test function
evaluating a wavelet shrinkage method.
}
\value{
Heavisine function values \eqn{f(\frac{i}{n}), i=1,\ldots,n}{f(i/n), i=1,\ldots,n} and its variability
\eqn{||f|| = \frac{\sum_{i=1}^n (f_i - \bar f)^2}{n-1}}{||f|| = \sum_{i=1}^n (f_i - mena(f))^2 / (n-1)}
where \eqn{\bar f = \frac{\sum_{i=1}^n f_i}{n}}{mena(f) = \sum_{i=1}^n f_i / n}.
}
\references{
Donoho, D.L. and Johnstone, I.M. (1994) Ideal spatial adaptation by wavelet shrinkage. 
\emph{Biometrika}, \bold{81}, 425--455.
}
\seealso{
\code{\link{dopp}}, \code{\link{ppoly}}, \code{\link{fg1}}.
}
\examples{
testheav <- heav(1024)
plot(testheav$x, testheav$meanf, xlab="", ylab="", 
     main="Plot of Heavisine function", type="l")
}
\keyword{nonparametric}
