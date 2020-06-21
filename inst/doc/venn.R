## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----libraries----------------------------------------------------------------
# devtools::install_url("https://github.com/upsetjs/upsetjs_r/releases/latest/download/upsetjs.tar.gz")
library(upsetjs)

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
listInput <- list(one = c('a', 'b', 'c', 'e', 'g', 'h', 'k', 'l', 'm'), two = c('a', 'b', 'd', 'e', 'j'), three = c('a', 'e', 'f', 'g', 'h', 'i', 'j', 'l', 'm'))

w <- upsetjsVennDiagram() %>% fromList(listInput) %>% interactiveChart()
w

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
we <- upsetjsEulerDiagram() %>% fromList(listInput) %>% interactiveChart()
we

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
upsetjsVennDiagram() %>%
  fromList(listInput) %>%
  chartVennLabels(title = "Chart Title", description = "this is a long chart description")

