% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/selection.R
\name{setSelection}
\alias{setSelection}
\title{sets the selection of the chart}
\usage{
setSelection(upsetjs, name = NULL)
}
\arguments{
\item{upsetjs}{an object of class \code{upsetjs} or \code{upsetjs_proxy}}

\item{name}{the name of the set to select or a list with name and type}
}
\value{
the object given as first argument
}
\description{
sets the selection of the chart
}
\examples{
upsetjs() \%>\%
  fromList(list(a = c(1, 2, 3), b = c(2, 3))) \%>\%
  setSelection("b")
}
