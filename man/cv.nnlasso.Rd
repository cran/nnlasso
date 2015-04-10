\name{cv.nnlasso}
\alias{cv.nnlasso}
\title{k-fold cross validation for penalized generalized linear models for normal/binomial/poisson family}
\description{The function does k-fold cross validation for selecting best value of regularization parameter.}
\usage{cv.nnlasso(x,y,family=c("binomial","normal","poisson"),
k=5,nlambda=50,tau=1,plot=TRUE, errorbars=TRUE)}
\arguments{
  \item{x}{x is matrix of order n x p where n is number of observations and p is number of predictor variables. Rows should represent observations and columns should represent predictor variables.}
  \item{y}{y is a vector of response variable of order n x 1.}
  \item{family}{family is either "normal" or "binomial" or "poisson".}
  \item{k}{Number of folds for cross validation. Default is k=5.}
  \item{nlambda}{Number of lambda values to be used for cross validation. Default is nlambda=50.}
  \item{tau}{Elastic net parameter, \eqn{0 \le \tau \le 1} in elastic net penalty \eqn{\lambda\{\tau\|\beta\|_1+(1-\tau)\|beta\|_2^2\}}. Default tau=1 corresponds to LASSO penalty.}
  \item{plot}{if TRUE, produces a plot of cross validated prediction mean squared errors/ deviances against lambda. Default is TRUE.}
  \item{errorbars}{If TRUE, error bars are drawn in the plot. Default is TRUE.}
 }
\value{Produces a plot and returns a list with following components:
	\item{lambda}{Value of lambda for which average cross validation error is minimum}
	\item{pmse}{A vector of average cross validation errors for various lambda values}
	\item{lambdas}{A vector of lambda values used in cross validation}
	\item{se}{A vector containing standard errors of cross validation errors}
}
\note{This function uses prediction means squared errors for normal family and deviance for binomial and poisson family.}
\author{B N Mandal and Jun Ma}
\examples{
#normal family
data(car)
attach(car)
x=as.matrix(car[,1:10])
cv.nnlasso(x,y,family="normal",k=5)

#binomial family with same data
cv.nnlasso(x,y1,family="binomial",k=5)
detach(car)

#poisson family
x=matrix(rnorm(100*30),100,30)
y=sample(c(1:5),100,replace=TRUE)
cv.nnlasso(x,y,family="poisson",k=5)
}
\keyword{Crossvalidation}