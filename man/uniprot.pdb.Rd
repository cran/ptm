% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getseq.R
\name{uniprot.pdb}
\alias{uniprot.pdb}
\title{Identifier Mapping From UniProt to PDB}
\usage{
uniprot.pdb(id)
}
\arguments{
\item{id}{the identifier to be converted.}
}
\value{
Returns a character string corresponding to the requested identifier.
}
\description{
Mapping between UniProt and PDB protein identifiers.
}
\examples{
\dontrun{uniprot.pdb('P01009')}
}
\seealso{
id.mapping()
}
\author{
Juan Carlos Aledo
}
