% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/go.R
\name{term.go}
\alias{term.go}
\title{Get Core Information About the GO Term}
\usage{
term.go(go, children = FALSE)
}
\arguments{
\item{go}{GO id.}

\item{children}{logical, when true GO children terms are returned.}
}
\value{
Returns a dataframe containing core information such as term name and definition, reference, aspect, and whether or not the term is obsolete. If children is set to TRUE, the function returns a list.
}
\description{
Gets core information about the GO term of interest.
}
\details{
When the argument children is set to TRUE, the output of this function is a list with two elements: the first one is a dataframe with the core information, and the second one is a dataframe containing the children terms.
}
\examples{
\dontrun{term.go('GO:0034599')}
}
\references{
Rhee et al. (2008) Nature Reviews Genetics 9:509–515.
}
\seealso{
search.go(), get.go(), bg.go(), hdfisher.go(), gorilla(), net.go()
}
\author{
Juan Carlos Aledo
}
