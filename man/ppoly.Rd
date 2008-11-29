\name{ppoly}
\alias{poly}
\alias{ppoly}
\title{Piecewise polynomial function}
\description{
This function generates Piecewise polynomial function values for \eqn{n} equally spaced points in \eqn{[0,1]}.
}
\usage{
ppoly(norx=1024)
}
\arguments{
\item{norx}{the number of data or x values in [0, 1]}
}
\details{
Piecewise polynomial function with the discontinuity is introduced by Nason and Silverman (1994) and
is useful test function evaluating a wavelet shrinkage method.
}
\value{
Piecewise polynomial function values \eqn{f(\frac{i}{n}), i=1,\ldots,n}{f(i/n), i=1,\ldots,n} and its variability
\eqn{||f|| = \frac{\sum_{i=1}^n (f_i - \bar f)^2}{n-1}}{||f|| = \sum_{i=1}^n (f_i - mena(f))^2 / (n-1)}
where \eqn{\bar f = \frac{\sum_{i=1}^n f_i}{n}}{mena(f) = \sum_{i=1}^n f_i / n}.
}
\references{
Nason, G.P. and Silverman, B.W. (1994) The discrete wavelet transform in S. 
\emph{Journal of Computational and Graphical Statistics}, \bold{3}, 163--191.
}
\seealso{
\code{\link{dopp}}, \code{\link{heav}}, \code{\link{fg1}}.
}
\examples{
testpoly <- ppoly(1024)
plot(testpoly$x, testpoly$meanf, xlab="", ylab="", 
     main="Plot of Piecewise polynomial function", type="l")
}
\keyword{nonparametric}
