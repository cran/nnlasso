\name{kfold}
\alias{kfold}
\title{k-fold partition of data at random}
\description{The function partitions a data set into k folds of equal sizes at random.}
\usage{kfold(data1,k)}
\arguments{
  \item{data1}{A matrix.}   
  \item{k}{Number of folds}
 }
\value{A matrix with fold identification in first column.}
\author{Baidya Nath Mandal and Jun Ma}
\details{This function is internal and used by cross validation routines.}
\examples{
data=matrix(rnorm(10*4),10,4)
kfold(data,3)
}
\keyword{internal}