\name{nnlasso.binomial.lambda}
\alias{nnlasso.binomial.lambda}
\title{Coefficients of non-negative penalized generalized linear models for a given lambda for binomial family}
\description{The function computes regression coefficients for a penalized generalized linear models subject to non-negativity constraints for a given lambda value for response variable following binomial distribution.}
\usage{nnlasso.binomial.lambda(n,p,sumy,beta0.old,beta1.old,x,y
,dxkx0,tau,lambda1,tol,maxiter,xbeta.old,mu1,eps,SE)}
\arguments{
  	\item{n}{Number of observations}
	\item{p}{Number of predictors}  
	\item{sumy}{Sum of y values}
	\item{beta0.old}{Initial value of intercept}
	\item{beta1.old}{A vector of initial values of slope coefficients}
	\item{x}{A n by p1 matrix of predictors}
	\item{y}{A vector of n observations}
	\item{dxkx0}{In case of a model with intercept, first diagonal of X'X}
	\item{tau}{Elastic net paramter. Default is 1}
	\item{lambda1}{The value of lambda}
	\item{tol}{Tolerance criterion. Default is 10^-6}
	\item{maxiter}{Maximum number of iterations. Default is 10000}
	\item{xbeta.old}{A n by 1 vector of xbeta values}
	\item{mu1}{The value of mu at beta.old}	
	\item{eps}{A small value below which a coefficient would be considered as zero. Default is eps=1e-6}
	\item{SE}{Logical. If SE=TRUE, standard errors of the coefficients will be produced. Default is SE=FALSE}
 }
\value{A list with following components
	\item{beta0.new}{Intercept estimate}
	\item{beta1.new}{Slope coefficient estimates}
	\item{conv}{"yes" means converged and "no" means did not converge}
	\item{iter}{Number of iterations to estimate the coefficients}
	\item{ofv.new}{Objective function value at solution}
	\item{xbeta.new}{xbeta values at solution}
	\item{mu1}{Value of mu at solution}
	\item{vcov}{Variance-covariance matrix of the coefficient estimates}
}
\author{B N Mandal and Jun Ma}
\details{This function is internal and used by nnlasso.binomial function. User need not call this function.}
\keyword{internal}