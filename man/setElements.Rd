% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\name{setElements}
\alias{setElements}
\title{set the vector of elements}
\usage{
setElements(upsetjs, value)
}
\arguments{
\item{upsetjs}{an object of class \code{upsetjs}}

\item{value}{the vector of elements}
}
\value{
the object given as first argument
}
\description{
set the vector of elements
}
\examples{
upsetjs() \%>\%
  setElements(c(1, 2, 3, 4, 5)) \%>\%
  getElements()
}
