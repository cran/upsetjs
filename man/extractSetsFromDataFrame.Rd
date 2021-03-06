% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\name{extractSetsFromDataFrame}
\alias{extractSetsFromDataFrame}
\title{extract the sets from a data frame (rows = elems, columns = sets, cell = contained)}
\usage{
extractSetsFromDataFrame(
  df,
  attributes = NULL,
  order.by = "cardinality",
  limit = NULL,
  colors = NULL,
  store.elems = TRUE
)
}
\arguments{
\item{df}{the data.frame like structure}

\item{attributes}{the optional column list or data frame}

\item{order.by}{order intersections by cardinality or degree}

\item{limit}{limit the ordered sets to the given limit}

\item{colors}{the optional list with set name to color}

\item{store.elems}{store the elements in the sets (default TRUE)}
}
\description{
extract the sets from a data frame (rows = elems, columns = sets, cell = contained)
}
