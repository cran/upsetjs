## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----libraries----------------------------------------------------------------
# devtools::install_url("https://github.com/upsetjs/upsetjs_r/releases/latest/download/upsetjs.tar.gz")
library(upsetjs)

## -----------------------------------------------------------------------------
listInput <- list(s1 = c('a', 'b', 'c', 'e', 'g', 'h', 'k', 'l', 'm'), s2 = c('a', 'b', 'd', 'e', 'j'), s3 = c('a', 'e', 'f', 'g', 'h', 'i', 'j', 'l', 'm'))
colors <- list(s1 = '#1f77b4', s2 = '#2ca02c', s3 = '#d62728', `s1&s2` = '#9467bd', `s1&s3` = '#8c564b', `s2&s3` = '#e377c2', `s1&s2&s3` = '#bcbd22')

render <- function(upsetjs) {
  upsetjs %>% fromList(listInput, colors=colors) %>% chartTheme(selection.color="", has.selection.opacity=0.3) %>% interactiveChart()
}

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
v <- upsetjs() %>% render()
v

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
v <- upsetjsVennDiagram() %>% render()
v

## ---- fig.width=9, fig.height=5, out.width="850px", tidy=TRUE, fig.align='center'----
v <- upsetjsEulerDiagram() %>% render()
v

