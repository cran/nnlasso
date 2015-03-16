\name{fold}
\alias{fold}
\title{Particular fold of a data after k fold partition}
\description{The function returns a particular fold after k-fold partitioning by kfold function.}
\usage{fold(data1,k,i)}
\arguments{
  \item{data1}{A matrix.}   
  \item{k}{Number of folds}
  \item{i}{The fold to be returned}
 }
\value{A matrix with desired fold specified.}
\author{B N Mandal and Jun Ma}
\details{This function is internal and used by cross validation routines.}
\examples{
data=matrix(rnorm(10*4),10,4)
kfold(data,3)
fold(data,3,2)
}
\keyword{internal}