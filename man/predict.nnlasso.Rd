\name{predict.nnlasso}
\alias{predict.nnlasso}
\title{Prediction of coefficients of a penalized linear regression or generalized linear models}
\description{The function computes estimated coefficients value at a given lambda or L1 norm or fraction of norm using a `nnlasso' object obtained using `nnlasso' function.}
\usage{\method{predict}{nnlasso}(object,mode=c("fraction","norm","lambda"),at=0,...)}
\arguments{
  \item{object}{A `nnlasso' object obtained using `nnlasso' function.}
  \item{mode}{If mode="lambda", prediction is made for a given lambda, if mode="norm", prediction is made for a given L1 norm and if mode="fraction", prediction is made for a fraction of norm value. Default is mode="lambda"}
  \item{at}{A value at which prediction is to be made. Default is at = 0.}
  \item{...}{Not used. Other arguments to predict.}
 }
\value{A vector of estimated coefficients of length p or p+1 at the given value of lambda or L1 norm or fraction of norm, depending on intercept=TRUE or FALSE in `nnlasso' object. Here p is number of predictor variables.}

\references{Mandal, B.N. and Jun Ma, (2015). L1 regularization path algorithm for generalized linear models with non-negativity constraints.}
\author{B N Mandal and Jun Ma}

\examples{
data(car)
attach(car)
x=as.matrix(car[,1:10])
g1=nnlasso(x,y1,family="binomial")
predict(g1,mode="lambda",at=0.1)
predict(g1,mode="L1norm",at=1)
predict(g1,mode="fraction",at=0.5)
g1=nnlasso(x,y,family="normal")
predict(g1,mode="lambda",at=0.09)
predict(g1,mode="L1norm",at=0.6)
predict(g1,mode="fraction",at=0.8)
detach(car)
}