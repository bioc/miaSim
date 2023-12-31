% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{.estimateAFromSimulations}
\alias{.estimateAFromSimulations}
\title{Get the interspecies interaction matrix A using leave-one-out method}
\usage{
.estimateAFromSimulations(
  simulations,
  simulations2,
  n_instances = 1,
  t_end = NULL,
  scale_off_diagonal = 0.1,
  diagonal = -0.5,
  connectance = 0.2
)
}
\arguments{
\item{simulations}{A list of simulation(s) with complete species}

\item{simulations2}{A list of simulation(s), each with one absent
species}

\item{n_instances}{Integer: number of instances to generate
(default: \code{n_instances = 1})}

\item{t_end}{Numeric: end time of the simulation. If not identical with t_end
in params_list, then it will overwrite t_end in each simulation
(default: \code{t_end = 1000})}

\item{scale_off_diagonal}{Numeric: scale of the off-diagonal elements
compared to the diagonal. Same to the parameter in function \code{randomA}.
(default: \code{scale_off_diagonal = 0.1})}

\item{diagonal}{Values defining the strength of self-interactions. Input can
be a number (will be applied to all species) or a vector of length n_species.
Positive self-interaction values lead to exponential growth. Same to the
parameter in function \code{randomA}.
(default: \code{diagonal = -0.5})}

\item{connectance}{Numeric frequency of inter-species interactions.
i.e. proportion of non-zero off-diagonal terms. Should be in the interval
0 <= connectance <= 1. Same to the parameter in function \code{randomA}.
(default: \code{connectance = 0.2})}
}
\value{
a matrix A with dimensions (n_species x n_species) where n_species
equals to the number of elements in simulations2
}
\description{
generate matrix A from the comparisons between simulations with one absent
species and a simulation with complete species (leave-one-out)
}
