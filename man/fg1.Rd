\name{fg1}
\alias{fg1}
\title{fg1 function}
\description{
This function generates fg1 function values for \eqn{n} equally spaced points in \eqn{[0,1]}.
}
\usage{
fg1(norx=1024)
}
\arguments{
\item{norx}{the number of data or x values in [0, 1]}
}
\details{
A smooth function fg1 is introduced by Fan and Gijbels (1995) and is useful test function
evaluating a wavelet shrinkage method.
}
\value{
fg1 function values \eqn{f(\frac{i}{n}), i=1,\ldots,n}{f(i/n), i=1,\ldots,n} and its variability
\eqn{||f|| = \frac{\sum_{i=1}^n (f_i - \bar f)^2}{n-1}}{||f|| = \sum_{i=1}^n (f_i - mena(f))^2 / (n-1)}
where \eqn{\bar f = \frac{\sum_{i=1}^n f_i}{n}}{mena(f) = \sum_{i=1}^n f_i / n}.
}
\references{
Fan, J. and Gijbels, I. (1995)  Data-driven bandwidth selection in local polynomial fitting: Variable
bandwidth and spatial adaptation. \emph{Journal of the Royal Statistical Society Ser. B} \bold{57}, 371--394.
}
\seealso{
\code{\link{dopp}}, \code{\link{heav}}, \code{\link{ppoly}}.
}
\examples{
testfg1 <- fg1(1024)
plot(testfg1$x, testfg1$meanf, xlab="", ylab="", 
     main="Plot of fg1 function", type="l")
}
\keyword{nonparametric}
