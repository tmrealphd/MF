\name{MFClusBoot}
\alias{MFClusBoot}
\title{Boostrap MF CI from clustered data}
\usage{
MFClusBoot(formula, data, compare = c("con", "vac"), boot.cluster = TRUE,
   boot.unit = FALSE, b = 100, B = 100, alpha = 0.05, hpd = TRUE,
   return.boot = FALSE, trace.it = FALSE)
}
\arguments{
  \item{formula}{Formula of the form \code{y ~ x +
  cluster(w)}, where y is a continuous response, x is a
  factor with two levels of treatment, and w is a factor
  indicating the clusters.}

  \item{data}{Data frame. See \code{Note} for handling of
  input data with more than two levels.}

  \item{compare}{Text vector stating the factor levels -
  \code{compare[1]} is the control or reference group to
  which \code{compare[2]} is compared}

  \item{boot.cluster}{Resample the clusters? Default TRUE}

  \item{boot.unit}{Resample the units within cluster?
  Default FALSE}

  \item{b}{Number of bootstrap samples to take with each
  cycle}

  \item{B}{Number of cycles, giving the total number of
  samples = B * b}

  \item{alpha}{Complement of the confidence level}

  \item{hpd}{Estimate highest density intervals? Default
  TRUE}

  \item{return.boot}{Save the bootstrap sample of the MF
  statistic? Default FALSE}

  \item{trace.it}{Verbose tracking of the cycles? Default
  FALSE}
}
\value{
a \code{\link{mfbootcluster-class}} data object
}
\description{
Estimates bootstrap confidence intervals for the mitigated
fraction from clustered or stratified data.
}
\details{
Resamples the data and produces bootstrap confidence
intervals. Equal tailed intervals are estimated by the
percentile method. Highest density intervals are estimated
by selecting the shortest of all possible intervals.
}
\note{
If input data contains more than two levels of treatment,
rows associated with unused treatment levels will be
removed. \cr Factor levels for treatments not present in
the input data will be ignored. \cr Clusters with missing
treatments will be excluded. See
\code{\link{mfbootcluster-class}} or use \code{trace.it} to
identify excluded clusters.
}
\examples{
\dontrun{
MFClusBoot(lesion ~ group + cluster(litter), piglung)

#  Bootstrapping clusters. . . . .
#
#  10000 bootstrap samples of clusters
#  Comparing vac to con
#
#   95\% confidence interval
#
#                   observed    median      lower     upper
#  Equal Tailed    0.3533835 0.3630573 0.07382550 0.6567271
#  Highest Density 0.3533835 0.3630573 0.07262462 0.6551724
#
#  Excluded Clusters
#  [1] M, Q, R, B, O, V, I, C

MFClusBoot(lesion ~ group + cluster(litter), piglung, boot.unit = T, b = 12, B = 12)

#### 144 resamples to save time
#
#  Bootstrapping clusters. . . . . . . . . . . . . . . .
#  Bootstrapping units. . . . . . . . . . . . . . . . .
#
#  10000 bootstrap samples of clusters and units in treatment in cluster
#  Comparing vac to con
#
#   95\% confidence interval
#
#                   observed    median         lower     upper
#  Equal Tailed    0.3533835 0.3714286 -0.0138888889 0.7162213
#  Highest Density 0.3533835 0.3714286 -0.0001472081 0.7297387
#
#  Excluded Clusters
#  [1] M, Q, R, B, O, V, I, C
}
}
\author{
David Siev \email{david.siev@aphis.usda.gov}
}
\references{
Siev D. (2005). An estimator of intervention effect on
disease severity. \emph{Journal of Modern Applied
Statistical Methods.} \bold{4:500--508}\cr \cr Efron B,
Tibshirani RJ. \emph{An Introduction to the Bootstrap.}
Chapman and Hall, New York, 1993.
}

