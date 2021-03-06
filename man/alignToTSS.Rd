% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{alignToTSS}
\alias{alignToTSS}
\title{A function to re-align a GRanges object to TSSs}
\usage{
alignToTSS(granges, upstream = 0, downstream = 1)
}
\arguments{
\item{granges}{A stranded GRanges object with a TSS column 
or TSS.rev and TSS.fwd columns}

\item{upstream}{How many bases upstream of the TSS should the GRanges
object by extended by? [Default: 0]}

\item{downstream}{How many bases downstream of the TSS should the GRanges
object by extended by? [Default: 1]}
}
\value{
GRanges aligned to the TSS column or to TSS.rev 
and TSS.fwd columns, and extended by upstream/downstream bp.
}
\description{
This function re-aligns ranges (typically regulatory elements)
to a set of coordinates, either the TSS column or the
TSS.fwd and TSS.rev columns. If none are found, the function
assumes the ranges are promoters and that the end or the ranges
are the TSSs.
}
\examples{
data(ce11_proms)
ce11_proms
alignToTSS(ce11_proms)
}
