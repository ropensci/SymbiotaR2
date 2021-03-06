% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Defaults.R
\name{SymbiotaR2_setup}
\alias{SymbiotaR2_setup}
\title{Set default URL for Symbiota2 portal download}
\usage{
SymbiotaR2_setup(url, append = FALSE, verbose = TRUE)
}
\arguments{
\item{url}{URL of Symbiota2 portal (a trailing \code{/} will be
appended, if it is not given)}

\item{append}{\code{logical} of whether to attempt to append this
to your \code{.Rprofile} file, making this your default every
time you start up \code{R}}

\item{verbose}{\code{logical} of whether or not to display output}
}
\value{
Invisbly, the URL that has been stored
}
\description{
Sets the \code{SymbiotaR2_url} option for you, optionally, by
appending it to your \code{.Rprofile}. Checks whether you've
specified a valid URL that can be reached, and attempts to pull 
a resource from the API, to confirm that the URL does specify 
a Symbiota2 portal.
}
\examples{
\dontrun{
# An example (that doesn't work because it's not a real portal)
SymbiotaR2_setup("http://nonexistent-portal.com/api/")
# Trying to save a non-existence portal
SymbiotaR2_setup("http://nonexistent-portal.com/api/", TRUE)
}
}
\author{
Will Pearse
}
