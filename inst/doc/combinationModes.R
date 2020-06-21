## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(upsetjs)
library(tibble)

## -----------------------------------------------------------------------------
t <- tribble(
  ~set1, ~set2, ~set3,
   1,   1,   0,
   0,   0,   1,
   0,   1,   1,
   0,   0,   1,
   0,   0,   1,
   0,   1,   1,
   1,   0,   1,
   0,   1,   1,
   0,   0,   1,
   0,   0,   1,
   1,   1,   1,
   1,   0,   0,
   0,   0,   1,
   0,   1,   0,
   1,   1,   1,
   0,   1,   0,
   0,   1,   1,
   0,   1,   0,
   0,   0,   1,
   0,   0,   1
)

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

upsetjs() %>% fromDataFrame(t) %>% generateIntersections()

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

upsetjs() %>% fromDataFrame(t) %>% generateUnions()

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

upsetjs() %>% fromDataFrame(t) %>% generateDistinctIntersections()

