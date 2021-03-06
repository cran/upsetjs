% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shiny.R
\name{upsetjsOutput}
\alias{upsetjsOutput}
\title{Output and render functions for using UpSet.js within Shiny
applications and interactive Rmd documents.}
\usage{
upsetjsOutput(outputId, width = "100\%", height = "400px")
}
\arguments{
\item{outputId}{output variable to read from}

\item{width}{Must be a valid CSS unit (like \code{'100\%'},
\code{'800px'}, \code{'auto'}) or a number, which will be coerced to a
string and have \code{'px'} appended.}

\item{height}{see width}
}
\value{
An output or render function that enables the use of the widget
within Shiny applications.
}
\description{
Output and render functions for using UpSet.js within Shiny
applications and interactive Rmd documents.
}
