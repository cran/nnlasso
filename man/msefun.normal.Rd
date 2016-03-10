\name{msefun.normal}
\alias{msefun.normal}
\title{Prediction means squared errors for hold out data in cross validation}
\description{The function computes Prediction means squared errors for hold out data of ith fold}
\usage{msefun.normal(lambda1,f1,xi,yi)}
\arguments{
  \item{lambda1}{value of lambda}   
  \item{f1}{A fitted `nnlasso' object}
  \item{xi}{Hold out data of predictor variables}
  \item{yi}{Hold out data of response variables}
 }
\value{A value of prediction mean squared error}
\author{Baidya Nath Mandal and Jun Ma}
\details{This function is internal and used by cross validation routines.}
\keyword{internal}