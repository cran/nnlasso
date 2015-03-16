\name{car}
\alias{car}
\docType{data}
\title{
The car data
}
\description{
Car data has 105 observations and 12 variables. All variables except the 12th are standardized such that mean of each of them is 0 and standard deviation is 1. First 10 variables are various characteristics of the cars. The 11th variable y is the price. The 12th variable is a binary variable.
}
\usage{data("car")}
\format{
  A data frame with 105 observations on the following 12 variables.
  \describe{
    \item{\code{Weight}}{weights of the cars}
    \item{\code{Length}}{overall length}
    \item{\code{Wheel.base}}{length of wheelbase}
    \item{\code{Width}}{width of car}
    \item{\code{Frt.Leg.Room}}{maximum front leg room}
    \item{\code{Front.Hd}}{distance between the car's head-liner and the head of a 5 ft. 9 in. front seat passenger}
    \item{\code{Turning}}{the radius of the turning circle}
    \item{\code{Disp}}{engine displacement}
    \item{\code{HP}}{net horsepower}
    \item{\code{Tank}}{fuel refill capacity}
    \item{\code{y}}{price}
    \item{\code{y1}}{High or low price}
  }
}
\details{
The data is created from car90 data of rpart package with selected 11 variables. The selected variables are Weight,Length,Wheel.base,Width,Frt.Leg.Room,Front.Hd,Turning,Disp,HP,Tank,Price. All these variables are standardized such that each of them has mean 0 and standard deviation 1. Price variable has been renamed as y. The variable y1 is a dichotomous variable created from that the data such that if price >=25000, then y1=1 else y1=0. Only complete cases are considered, so the data has 105 observations in place of 111 observations in car90 data set.}
\source{
Terry Therneau, Beth Atkinson and Brian Ripley (2014). rpart: Recursive Partitioning and Regression Trees. R package version 4.1-8. http://CRAN.R-project.org/package=rpart
}
\examples{
data(car)
}
\keyword{datasets}
