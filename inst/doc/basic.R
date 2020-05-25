## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----libraries----------------------------------------------------------------
# devtools::install_url("https://github.com/upsetjs/upsetjs_r/releases/latest/download/upsetjs.tar.gz")
library(upsetjs)

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

# example of list input (list of named vectors, each having a list of contained elements)
listInput <- list(one = c('a', 'b', 'c', 'e', 'g', 'h', 'k', 'l', 'm'), two = c('a', 'b', 'd', 'e', 'j'), three = c('a', 'e', 'f', 'g', 'h', 'i', 'j', 'l', 'm'))

w <- upsetjs() %>% fromList(listInput) %>% interactiveChart()
w

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>% fromList(list(one = c('a', 'b', 'c', 'e', 'g', 'h', 'k', 'l', 'm'), two = c('a', 'b', 'd', 'e', 'j'), three = c('a', 'e', 'f', 'g', 'h', 'i', 'j', 'l', 'm')))

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

# example of expression input
expressionInput <- list(one = 9, two = 5, three = 9, `one&two` = 3, `one&three` = 6, `two&three` = 3, `one&two&three` = 2)


upsetjs() %>% fromExpression(expressionInput)

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

# boolean table with rows = elements, columns = sets, cell = is row part of this set
dataFrame <- as.data.frame(list(
  one=c(1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1),
  two=c(1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0),
  three=c(1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)),
  row.names=c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm'))


upsetjs() %>% fromDataFrame(dataFrame)

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

upsetjs() %>% fromList(listInput) %>%
  generateIntersections(min=2, max=NULL, empty=T, order.by='cardinality', limit=NULL)

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----

upsetjs() %>% fromList(listInput) %>%
  generateUnions(min=0, max=2, empty=T, order.by='degree', limit=NULL)

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  interactiveChart()

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  setSelection("one")

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  setSelection(c("one", "two"))

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  addQuery("Q1", color="red", elems=c('a', 'b', 'c')) %>%
  addQuery("Q2", color="blue", set='two')

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
dataFrame <- as.data.frame(list(
  one=c(1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1),
  two=c(1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0),
  three=c(1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1)),
  row.names=c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm'))

upsetjs() %>%
  fromDataFrame(dataFrame, attributes = list(attr=runif(nrow(dataFrame))))

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  chartTheme('dark')

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  chartLabels(combination.name = "Combination Label", set.name = "Set Label")

## ---- fig.width=9, fig.height=5, out.width="850px",tidy=TRUE, fig.align='center'----
upsetjs() %>%
  fromList(listInput) %>%
  chartLayout(numerical.scale = 'log')

