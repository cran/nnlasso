\name{coef.nnlasso}
\alias{coef.nnlasso}
\title{Extract coefficients from a fitted nnlasso object}
\description{The function returns the coefficients from a fitted nnlasso object}
\usage{\method{coef}{nnlasso}(object,...)}
\arguments{
  \item{object}{A `nnlasso' object obtained using `nnlasso' function.}
  \item{...}{Not used}
  }
\value{Estimated coefficients for different lambdas starting from maximum value of lambda to minimum value of lambda}

\references{Mandal, B.N. and Ma, J. (2016). L1 regularized multiplicative iterative path algorithm for non-negative generalized linear models}
\author{Baidya Nath Mandal and Jun Ma}

\examples{
data(car)
attach(car)
x=car[,1:10]
g1=nnlasso(x,y1,family="binomial")
coef(g1)
g1=nnlasso(x,y,family="normal")
coef(g1)
detach(car)
}