% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mmplot_pairs.R
\name{mmplot_pairs}
\alias{mmplot_pairs}
\title{Plot multiple combinations of variables in a pairs plot}
\usage{
mmplot_pairs(mm, variables = NULL, textsize = 5, axis_ticks = TRUE,
  ...)
}
\arguments{
\item{mm}{(\emph{required}) A dataframe loaded with \code{\link{mmload}}.}

\item{variables}{A vector of 3 or more variable names in \code{mm} to plot on each axis. If NULL, the default, then all coverage variables will be plotted as well as GC content. (\emph{Default: } \code{NULL})}

\item{textsize}{The text size of the axis titles. (\emph{Default: } \code{5})}

\item{axis_ticks}{Hide or show axis ticks on both axes. (\emph{Default: } \code{TRUE})}

\item{...}{Arguments passed on to \code{\link{mmplot}}, eg. \code{color_by}, \code{min_length}, axis scales and more, see \code{help("mmplot")}.}
}
\value{
A ggplot object. Note that mmgenome2 hides all warnings produced by ggplot objects.
}
\description{
Plots multiple variables from the given mm object in a grid plot with all pairs of variables using \code{\link{mmplot}}.
}
\examples{
library(mmgenome2)
data(mmgenome2)
mmgenome2
mmplot_pairs(mmgenome2,
  variables = c("cov_C13.11.14", "cov_C13.11.25", "cov_C13.12.03", "cov_C14.01.09"),
  min_length = 10000,
  color_by = "taxonomy",
  x_scale = "log10",
  y_scale = "log10",
  x_limits = c(1, NA),
  y_limits = c(1, NA)
)
}
\author{
Kasper Skytte Andersen \email{ksa@bio.aau.dk}

Soren M. Karst \email{smk@bio.aau.dk}

Mads Albertsen \email{MadsAlbertsen85@gmail.com}
}
