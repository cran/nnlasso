\name{nnlasso}
\alias{nnlasso}
\title{Entire regularization path of non-negative penalized generalized linear model for normal/binomial/poisson family using multiplicative iterative algorithm}
\description{The function computes coefficients of a penalized generalized linear model subject to non-negativity constraints for normal/binomial/poisson family using multiplicative iterative algorithm for a sequence of lambda values. Currently lasso and elastic net penalty are supported.}
\usage{nnlasso(x,y,family=c("normal","binomial","poisson"),lambda=NULL,
intercept=TRUE,normalize=TRUE,tau=1,tol=1e-6,maxiter=1e5,nstep=100,min.lambda=1e-4,
eps=1e-6,path=TRUE,SE=FALSE)}
\arguments{
  \item{x}{x is matrix of order n x p where n is number of observations and p is number of predictor variables. Rows should represent observations and columns should represent predictor variables.}
  \item{y}{y is a vector of response variable of order n x 1. y should follow either normal/binomial/poisson distribution.}
  \item{family}{family should be one of these: "normal","binomial","poisson"}
  \item{lambda}{The value of lambda for which coefficients are desired. The value of path must be FALSE in this case.}
  \item{intercept}{If TRUE, model includes intercept, else the model does not have intercept.}
  \item{normalize}{If TRUE, columns of x matrix are normalized with mean 0 and norm 1 prior to fitting the model. The coefficients at end are returned on the original scale. Default is normalize = TRUE.}
  \item{tau}{Elastic net parameter, \eqn{0 \le \tau \le 1} in elastic net penalty \eqn{\lambda{\tau||\beta||_1+(1-\tau)||\beta||_2^2}}. Default tau = 1 corresponds to LASSO penalty.}
  \item{tol}{Tolerance criteria for convergence of solutions. Default is tol = 1e-6.}
  \item{maxiter}{Maximum number of iterations permissible for solving optimization problem for a particular lambda. Default is 10000. Rarely you need to change this to higher value.}
  \item{nstep}{Number of steps from maximum value of lambda to minimum value of lambda. Default is nstep = 100.}
  \item{min.lambda}{Minimum value of lambda. Default is min.lambda=1e-4.}
  \item{eps}{A small value below which a coefficient would be considered as zero.}
  \item{path}{Logical. If path=TRUE, entire regularization path will be obtained for a sequence of lambda values which are calculated automatically. To get coefficient estimates for a single lambda value, set path=FALSE with lambda=value. Default is path=TRUE.}
  \item{SE}{logical. If SE=TRUE, standard errors are produced for estimated coefficient at a given lambda. Standard errors are not produced if path=TRUE. Default is SE=FALSE.}
}
\value{An object of class `nnlasso' with following components:
	\item{beta0}{A vector of order nstep of intercept estimates. Each value denote an estimate for a particular lambda. Corresponding lambda values are available in `lambdas' element of the `nnlasso' object.}
	\item{coef}{A matrix of order nstep x p of slope estimates. Each row denotes solution for a particular lambda. Corresponding lambda values are available in `lambdas' element of the `nnlasso' object. Here p is number of predictor variables.}
	\item{lambdas}{Sequence of lambda values for which coefficients are obtained}
	\item{L1norm}{L1norm of the coefficients}
	\item{norm.frac}{Fractions of norm computed as L1 norm at current lambda divided by maximum L1 norm}
	\item{lambda.iter}{Number of iterations used for different lambdas}
	\item{of.value}{Objective function values}
	\item{normx}{Norm of x variables}
	\item{se}{The standard errors of coefficient estimates}
}

\references{Mandal, B.N. and Ma, J. (2016). L1 regularized multiplicative iterative path algorithm for non-negative generalized linear models.}
\author{Baidya Nath Mandal and Jun Ma}
\examples{
#Non-negative LASSO
data(car)
attach(car)
x=as.matrix(car[,1:10])
g1=nnlasso(x,y,family="normal")
plot(g1)
plot(g1,xvar="lambda")


#Non-negative Elastic net with same data
\dontrun{
g2=nnlasso(x,y,family="normal",tau=0.6)
plot(g2)
plot(g2,xvar="lambda")
}

#Non-negative Ridge regression with same data
\dontrun{
g3=nnlasso(x,y,family="normal",tau=0)
plot(g3)
plot(g3,xvar="lambda")
}

#Non-negative L1 penalized GLM for binomial family
\dontrun{
g1=nnlasso(x,y1,family="binomial")
plot(g1)
plot(g1,xvar="lambda")
}

#Non-negative Elastic net with GLM with binomial family
\dontrun{
g2=nnlasso(x,y1,family="binomial",tau=0.8)
plot(g2)
plot(g2,xvar="lambda")
}

#coefficient estimates for a particular lambda for normal family
g1=nnlasso(x,y,lambda=0.01,family="normal",path=FALSE,SE=TRUE)
coef(g1)
round(g1$se,3)


#coefficient estimates for a particular lambda for binomial family
\dontrun{
g2=nnlasso(x,y1,lambda=0.01,family="binomial",path=FALSE,SE=TRUE)
coef(g2)
round(g2$se,3)
detach(car)
}
}
\keyword{LASSO}
\keyword{L1 penalty}
\keyword{Elastic net}
\keyword{Generalized linear model}
\keyword{Regression}
\keyword{Ridge regression}
\keyword{Regularization}
\keyword{Non-negativity}
\keyword{Non-negative}