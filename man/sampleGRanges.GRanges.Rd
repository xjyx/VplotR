% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{sampleGRanges.GRanges}
\alias{sampleGRanges.GRanges}
\title{A function to sample GRanges within GRanges}
\usage{
\method{sampleGRanges}{GRanges}(
  x,
  n = NULL,
  width = NULL,
  exclude = FALSE,
  avoid_overlap = FALSE
)
}
\arguments{
\item{x}{GRanges object}

\item{n}{Integer, number of sampled GRanges}

\item{width}{Integer, width of sampled GRanges}

\item{exclude}{Boolean, should the original GRanges be excluded?}

\item{avoid_overlap}{Boolean, should the sampled GRanges 
not be overlapping?}
}
\value{
A GRanges object of length n
}
\description{
This function takes a given GRanges and returns another GRanges 
object. The new GRanges has the same number of ranges and the same
chromosome, width and strand distributions than the original 
GRanges.
}
\examples{
data(ce11_proms)
sampleGRanges(ce11_proms, 100)
}
