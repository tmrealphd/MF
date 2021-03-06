\name{HLBoot}
\alias{HLBoot}
\title{Bootstrap CI for MF, HL, and Qdif}
\usage{
HLBoot(formula, data, compare = c("con", "vac"), b = 100, B = 100,
  alpha = 0.05, hpd = TRUE, bca = FALSE, return.boot = FALSE,
  trace.it = FALSE, seed = NULL)
}
\arguments{
  \item{formula}{Formula of the form \code{y ~ x +
  cluster(w)}, where y is a continuous response, x is a
  factor with two levels of treatment, and w is a factor
  indicating the clusters.}

  \item{data}{Data frame}

  \item{compare}{Text vector stating the factor levels -
  \code{compare[1]} is the control or reference group to
  which \code{compare[2]} is compared}

  \item{b}{Number of bootstrap samples to take with each
  cycle}

  \item{B}{Number of cycles, giving the total number of
  samples = B * b}

  \item{alpha}{Complement of the confidence level}

  \item{hpd}{Estimate highest density intervals for MF and
  HL? Default TRUE.}

  \item{bca}{Estimate BCa intervals for MF? Default FALSE.}

  \item{return.boot}{Save the bootstrap samples of the
  statistics? Default FALSE.}

  \item{trace.it}{Verbose tracking of the cycles? Default
  FALSE.}

  \item{seed}{initial seed value. Ignored.}
}
\value{
a \code{\link{mfhlboot-class}} data object
}
\description{
Estimates bootstrap confidence intervals for MF, HL, and
Qdif.
}
\details{
Estimates bootstrap confidence intervals for the mitigated
fraction (MF), Hodge-Lehmann estimator (HL), and the
difference of medians and quartiles (Qdif). The
Hodges-Lehmann estimator is the media difference; it
assumes that the two distributions have the same shape and
differ by a constant shift.
}
\examples{
HLBoot(lesion~group,calflung)

#  Bootstrapping . . . . . . . . . . . .
#
#  10000 bootstrap samples
#  95\% confidence intervals
#  Comparing vac to con
#
#
#  Mitigated Fraction
#
#                  observed median  lower  upper
#  Equal Tailed        0.44 0.4464 0.1264 0.7056
#  Highest Density     0.44 0.4464 0.1392 0.7120
#
#
#  Hodges-Lehmann
#
#                  observed   median      lower    upper
#  Equal Tailed    -0.07335 -0.07125 -0.1720537 -0.01430
#  Highest Density -0.07335 -0.07125 -0.1563500 -0.00555
#
#
#  Quartile Differences (quartiles of vac - quartiles of con)
#
#       observed    median      lower     upper
#  Q25 -0.041500 -0.041300 -0.1034000 -0.000905
#  Q50 -0.112525 -0.111175 -0.2811688  0.023200
#  Q75 -0.168000 -0.168000 -0.3858500  0.023975
}
\author{
David Siev \email{david.siev@aphis.usda.gov}
}
\references{
Hodges JL, Lehmann EL, (1963). Estimates of location based
on rank tests. \emph{Annals of Mathematical Statistics.}
\bold{34:598--611}. \cr \cr Siev D, (2005). An estimator of
intervention effect on disease severity. \emph{Journal of
Modern Applied Statistical Methods.} \bold{4:500--508}. \cr
\cr Efron B, Tibshirani RJ. \emph{An Introduction to the
Bootstrap.} Chapman and Hall, New York, 1993.
}
\seealso{
\code{\link{mfhlboot-class}}
}

