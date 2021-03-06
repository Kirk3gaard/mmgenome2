% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mmextract.R
\name{mmextract}
\alias{mmextract}
\title{Extract all scaffolds within a selection polygon}
\usage{
mmextract(mm, selection, min_length = 0, inverse = FALSE)
}
\arguments{
\item{mm}{(\emph{required}) A dataframe loaded with \code{\link{mmload}}.}

\item{selection}{(\emph{required}) A 2-column dataframe with the x and y coordinates of a selection of points in an \code{\link{mmplot}}. The column names of the provided dataframe must match column names in \code{mm}.}

\item{min_length}{Filter all scaffolds with a length at or below this value before the extraction. (\emph{Default: } \code{0})}

\item{inverse}{(\emph{Logical}) If \code{TRUE}, then the scaffolds within the \code{selection} are instead removed. (\emph{Default: } \code{FALSE})}
}
\value{
A dataframe (tibble) compatible with other mmgenome2 functions.
}
\description{
Finds all scaffolds that fall into a \code{selection} polygon highlighted in a plot generated by \code{\link{mmplot}}.
}
\examples{
library(mmgenome2)
data(mmgenome2)
mmgenome2
selection <- data.frame(
  cov_C13.11.25 = c(7.2, 16.2, 25.2, 23.3, 10.1),
  cov_C14.01.09 = c(47, 77, 52.8, 29.5, 22.1)
)
mmgenome2_extraction <- mmextract(mmgenome2,
  min_length = 3000,
  selection = selection,
  inverse = FALSE
)
mmgenome2_extraction
}
\author{
Kasper Skytte Andersen \email{ksa@bio.aau.dk}

Soren M. Karst \email{smk@bio.aau.dk}

Mads Albertsen \email{MadsAlbertsen85@gmail.com}
}
