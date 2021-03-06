\docType{class}
\name{mfmp-class}
\alias{mfmp-class}
\title{Class mfmp}
\usage{
mfmp$new(ci, x, what, alpha, tdist, df)
}
\description{
Class mfmp is created from output of funtion MFmp
}
\section{Fields}{
  \itemize{ \item{\code{ci:} }{numeric vector of point and
  interval estimates} \item{\code{x: } }{numeric vector of
  length three holding data} \item{\code{what: }}{text
  string describing interval type} \item{\code{alpha:
  }}{numeric value specifying complement of confidence
  interval} \item{\code{tdist: }}{Logical indicating if t
  distribution(TRUE) or gaussian (FALSE)} \item{\code{df:
  }}{numeric value indicating degrees freedom} }
}
\author{
Marie Vendettuoli
\email{marie.c.vendettuoli@aphis.usda.gov}
}
\seealso{
\code{\link{MFmp}}
}
\keyword{documentation}

