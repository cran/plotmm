## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE,
  echo = TRUE
)

options(repos = c(CRAN = "https://cloud.r-project.org"))

## ----setup--------------------------------------------------------------------
# if (!requireNamespace("EMCluster", quietly = TRUE)) {
#   install.packages("EMCluster")
# }
# 
# if (!requireNamespace("flexmix", quietly = TRUE)) {
#   install.packages("flexmix")
# }
# 
# if (!requireNamespace("mixtools", quietly = TRUE)) {
#   install.packages("mixtools")
# }
# 
# if (!requireNamespace("ggplot2", quietly = TRUE)) {
#   install.packages("ggplot2")
# }
# 
# if (!requireNamespace("plotmm", quietly = TRUE)) {
#   install.packages("plotmm")
# }
# 
# library(plotmm)

## -----------------------------------------------------------------------------
# library(mixtools)
# library(ggplot2)
# 
# set.seed(576)
# 
# mixmdl <- normalmixEM(iris$Petal.Length, k = 2)
# 
# # visualize
# plot_mm(mixmdl, 2) +
#   labs(title = "Univariate Gaussian Mixture Model",
#        subtitle = "Mixtools Object")

## -----------------------------------------------------------------------------
# library(mixtools)
# library(ggplot2)
# 
# # set up the data (replication of mixtools examples for comparability)
# data(NOdata)
# attach(NOdata)
# 
# set.seed(100)
# 
# out <- regmixEM(Equivalence, NO, verb = TRUE, epsilon = 1e-04)
# 
# df <- data.frame(out$beta)
# 
# # visualize
# plot_mm(out) +
#   labs(title = "Mixture of Regressions",
#        subtitle = "Mixtools Object")

## -----------------------------------------------------------------------------
# library(EMCluster)
# library(patchwork)
# 
# set.seed(1234)
# 
# x <- da1$da
# 
# out <- init.EM(x, nclass = 10, method = "em.EM")
# 
# plot_mm(out, data = x) +
#   plot_annotation(title = "Bivariate Gaussian Mixture Model",
#                   subtitle = "EMCluster Object")

## -----------------------------------------------------------------------------
# library(mixtools)
# 
# mixmdl <- normalmixEM(faithful$waiting, k = 2)
# 
# plot_cut_point(mixmdl, plot = TRUE, color = "amerika") # produces plot
# 
# plot_cut_point(mixmdl, plot = FALSE) # gives the cut point value, not the plot

## -----------------------------------------------------------------------------
# library(mixtools)
# library(magrittr)
# library(ggplot2)
# 
# # Fit a univariate mixture model via mixtools
# set.seed(576)
# 
# mixmdl <- normalmixEM(faithful$waiting, k = 2)
# 
# # Customize a plot with `plot_mix_comps_normal()`
# data.frame(x = mixmdl$x) %>%
# ggplot() +
# geom_histogram(aes(x, ..density..), binwidth = 1, colour = "black",
#                  fill = "white") +
#    stat_function(geom = "line", fun = plot_mix_comps_normal, # here is the function
#                  args = list(mixmdl$mu[1], mixmdl$sigma[1], lam = mixmdl$lambda[1]),
#                  colour = "red", lwd = 1.5) +
#    stat_function(geom = "line", fun = plot_mix_comps_normal, # here again as k = 2
#                  args = list(mixmdl$mu[2], mixmdl$sigma[2], lam = mixmdl$lambda[2]),
#                  colour = "blue", lwd = 1.5) +
#    ylab("Density")

