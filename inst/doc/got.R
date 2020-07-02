## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----libraries----------------------------------------------------------------
# devtools::install_url("https://github.com/upsetjs/upsetjs_r/releases/latest/download/upsetjs.tar.gz")
library(upsetjs)

## ----data---------------------------------------------------------------------
data(got)
got

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
upsetjs() %>% fromDataFrame(got) %>% interactiveChart()

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
upsetjsVennDiagram() %>% fromDataFrame(got) %>% interactiveChart()

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
upsetjsKarnaughMap() %>% fromDataFrame(got) %>% interactiveChart()

