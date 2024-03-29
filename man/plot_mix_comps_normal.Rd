% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_mix_comps_normal.R
\name{plot_mix_comps_normal}
\alias{plot_mix_comps_normal}
\title{Custom Function for Overlaying Mixture Components for Normal Distributions}
\usage{
plot_mix_comps_normal(x, mu, sigma, lam)
}
\arguments{
\item{x}{Input data}

\item{mu}{Mean of component}

\item{sigma}{Variance of component}

\item{lam}{Mixture weight of component}
}
\description{
Plots a mixture component conditioned on a superimposed function
}
\details{
Allows for specifying a custom function to be superimposed when plotting a mixture component assuming a normal distribution. This is the original function for the package, which is also included in the updated \code{plot_mix_comps()} function.
}
\examples{
\donttest{
if(require(mixtools)){
mixmdl <- mixtools::normalmixEM(faithful$waiting, k = 2)
}
x <- mixmdl$x
x <- data.frame(x)
ggplot2::ggplot(data.frame(x)) +
  ggplot2::geom_density(ggplot2::aes(x), color="black", fill="black") +
  ggplot2::stat_function(geom = "line", fun = plot_mix_comps_normal,
                args = list(mixmdl$mu[1], mixmdl$sigma[1], lam = mixmdl$lambda[1]),
                colour = "red") +
  ggplot2::stat_function(geom = "line", fun = plot_mix_comps_normal,
                args = list(mixmdl$mu[2], mixmdl$sigma[2], lam = mixmdl$lambda[2]),
               colour = "blue")
}

}
