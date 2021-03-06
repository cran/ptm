% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evolutionary.R
\name{site.type}
\alias{site.type}
\title{Compute Shannon Entropy and Sort out the Sites}
\usage{
site.type(target, species, th = 0.25)
}
\arguments{
\item{target}{the KEGG identifier of the protein of interest.}

\item{species}{a character vector containing the KEGG code for the species of interest.}

\item{th}{value between 0 and 1 indicating the percentile driving the site partition.}
}
\value{
Returns a dataframe including the category of each site according to its variability.
}
\description{
Computes Shannon's entropies and performs a partition of the sites set.
}
\details{
Each site can be classified according to their entropies into the following categories: invariant, pseudo-invariant, constrained, conservative, unconstrained, drastic.
}
\examples{
\dontrun{site.type('hsa:4069', 'vertebrates')}
}
\seealso{
msa(), custom.aln(), parse.hssp(), get.hssp(), shannon()
}
\author{
Juan Carlos Aledo
}
