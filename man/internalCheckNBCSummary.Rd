% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nbc4va_validation.R
\name{internalCheckNBCSummary}
\alias{internalCheckNBCSummary}
\title{Check arguments for summary.nbc()}
\usage{
internalCheckNBCSummary(object, top = 5, id = NULL, csmfa.obs = NULL, ...)
}
\arguments{
\item{object}{The result \code{\link{nbc}} object.}

\item{top}{A number that produces top causes depending on \emph{id}:
\itemize{
  \item If (\emph{id} is char): provide the \emph{top} causes of the case by probability
  \item If (\emph{id} is NULL): provide the \emph{top} causes by predicted Cause Specific Mortality Fractions (CSMF)
}}

\item{id}{A character representing a case id in the test data.}

\item{csmfa.obs}{A character vector of the true causes for calculating the CSMF accuracy.}

\item{...}{Additional arguments to be passed if applicable}
}
\value{
out A list object containing the checked inputs:
\itemize{
  \item $object: an \code{\link{nbc}} object
  \item $top: numeric value
  \item $id: NULL or character value
  \item $csmfa.obs: NULL or character vector
}
}
\description{
Performs checks to ensure that the arguments passed to \code{\link{summary.nbc}} are correct.
This function will perform automatic data type conversions, and display warnings when appropriate.
}
\details{
The following checks are applied:
\itemize{
  \item \emph{object} is of class "nbc"
  \item \emph{top} is a numeric value of length 1
  \item \emph{id} is NULL or a character of length 1, and exists in the test data
  \item \emph{csmfa.obs} is NULL or a character or vector of characters
}
}
\examples{
library(nbc4va)
data(nbc4vaData)

# Create an nbc
train <- nbc4vaData[1:50, ]
test <- nbc4vaData[51:100, ]
results <- nbc(train, test)

# Check the inputs before passing on to summary
checked <- nbc4va::internalCheckNBCSummary(results, 5, "g85")
results <- checked$object
top <- checked$top
id <- checked$id
csmfa.obs <- checked$csmfa.obs

}
\seealso{
Other validation functions: 
\code{\link{internalCheckNBC}()}
}
\concept{validation functions}
\keyword{internal}
