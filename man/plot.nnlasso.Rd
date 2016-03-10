\name{plot.nnlasso}
\alias{plot.nnlasso}
\title{Plot of regularization path}
\description{Produces a plot of entire regularization path from a 'nnlasso' object obtained using `nnlasso' function.}
\usage{\method{plot}{nnlasso}(x,xvar=c("lambda","L1norm","fraction of norm"),...)}
\arguments{
  \item{x}{A `nnlasso' object obtained using `nnlasso' function.}
  \item{xvar}{What should be on x-axis? xvar="lambda" produces a plot of regularization path with respect to lambda, xvar="L1norm" produces a plot of regularization path with respect to L1 norm of coefficients and xvar="fraction of norm" produces a plot of regularization path with respect to fraction of norm of coefficients. Default is xvar="L1norm".}
  \item{...}{Optional graphical parameters to matplot() function}
 }
\value{A plot of regularization path is produced.}


\references{Mandal, B.N. and Ma, J. (2016). L1 regularized multiplicative iterative path algorithm for non-negative generalized linear models.}
\author{Baidya Nath Mandal and Jun Ma}

\examples{
data(car)
attach(car)
x=as.matrix(car[,1:10])
g1=nnlasso(x,y,family="normal")
plot(g1)
plot(g1,xvar="lambda")
g1=nnlasso(x,y1,family="binomial")
plot(g1)
plot(g1,xvar="lambda")
detach(car)
}
\keyword{LASSO}
\keyword{Elastic net}
\keyword{Penalized}
\keyword{Regularized}
\keyword{L1 norm}
\keyword{Jacobi}
\keyword{Regression}
\keyword{Generalized linear models}
\keyword{Gradient descent}
\keyword{Non-negativity}