% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ddG.R
\name{imutant}
\alias{imutant}
\title{Compute Changes in Stability (DDG)}
\usage{
imutant(protein, ch = "_", pos, newres = "", pH = 7, Te = 25, timeout = 60)
}
\arguments{
\item{protein}{either the 4-letter identifier of a PDB structure, or the amino acid sequence (one letter amino acid code) of a protein.}

\item{ch}{a letter identifying the chain of interest.}

\item{pos}{the position, in the primary structure, of the residue to be mutated.}

\item{newres}{the one letter code of the residue to be incorporated. When a value is not entered for this parameter, then the function will compute DDG for the mutation to any possible amino acid.}

\item{pH}{a numeric value between 0 and 14.}

\item{Te}{a numeric value indicating the temperature in degrees Celsius.}

\item{timeout}{maximum time to wait, in seconds, for a response from the I-Mutant server.}
}
\value{
The function computes and returns a dataframe containing the following variables:
\itemize{
\item{Position:}  {Position in the primary structure of the mutated residue.}
\item{WT:}  {Amino acid found at that position in the wild-type protein.}
\item{NW:}  {New amino acid found in the mutated protein.}
\item{DDG:} {Change in Gibbs free energy (kcal/mol), defined as DDG = DGmt - DGwt, where DG is the change in Gibbs free energy for the folding of the protein from its unfolded state. Thus, a positive value means a stabilizing effect, and vice versa.}
\item{pH:}  {-log H+]}
\item{T:}   {Temperature in Celsius degrees.}
\item{RSA:}  {Relative Solvent Accessible Area (Only if a PDB file has been provided).}
}
}
\description{
Computes changes in the stability of a protein after a residue mutation using a machine-learning approach.
}
\details{
This function implements the I-Mutant v2.0 tool, which is a fast method based on a support vector machine approach to predict protein stability changes upon single point mutations.
}
\examples{
\dontrun{imutant(protein = '1u8f', ch = 'O', pos = 46, newres = 'K')}
}
\references{
Capriotti et al (2005) Nucl. Ac. Res. 33:W306-W310.
}
\seealso{
foldx.mut(), ddG.profile()
}
\author{
Juan Carlos Aledo
}
