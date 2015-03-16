\name{cv.nnlasso.poisson}
\alias{cv.nnlasso.poisson}
\title{k-fold cross validation for penalized generalized linear models for poisson family}
\description{The function does k-fold cross validation for selecting best value of regularization parameter.}
\usage{cv.nnlasso.poisson(x,y,k=5,nlambda=50,tau=1,plot=TRUE,errorbars=TRUE)}
\arguments{
  \item{x}{x is matrix of order n x p where n is number of observations and p is number of predictor variables. Rows should represent observations and columns should represent predictor variables.}
  \item{y}{y is a vector of response variable of order n x 1.}
  \item{k}{Number of folds for cross validation. Default is k=5.}
  \item{nlambda}{Number of lambda values to be used for cross validation. Default is nlambda=50.}
  \item{tau}{Elastic net parameter, \eqn{0 \le \tau \le 1} in elastic net penalty \eqn{\lambda\{\tau\|\beta\|_1+(1-\tau)\|beta\|_2^2\}}. Default tau=1 corresponds to LASSO penalty.}
  \item{plot}{if TRUE, produces a plot of cross validated prediction mean squared errors against lambda. Default is TRUE.}
  \item{errorbars}{If TRUE, error bars are drawn in the plot. Default is TRUE.}
 }
\value{Produces a plot and returns a list with following components:
	\item{lambda}{Value of lambda for which average cross validation error is minimum}
	\item{pmse}{A vector of average cross validation errors for various lambda values}
	\item{lambdas}{A vector of lambda values used in cross validation}
	\item{se}{A vector containing standard errors of cross validation errors}
}
\note{This function need not be called by user. The function is internally called by cv.nnlasso function.}
\references{Mandal, B.N. and Jun Ma, (2015). L1 regularization path algorithm for generalized linear models with non-negativity constraints.}
\author{B N Mandal and Jun Ma}
\keyword{internal}