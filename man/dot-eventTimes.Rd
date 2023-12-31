% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{.eventTimes}
\alias{.eventTimes}
\title{generate a vector of times when events is happening}
\usage{
.eventTimes(t_events = NULL, t_duration = NULL, t_end = 1000, ...)
}
\arguments{
\item{t_events, t_duration}{Numeric: vector of starting time and duration of
the events}

\item{t_end}{Numeric: end time of the simulation}

\item{...}{: additional parameters to pass to simulationTimes, including
t_start, t_step, and t_store.}
}
\value{
A vector of time points in the simulation
}
\description{
generate a vector of times when events is happening
}
\examples{
tEvent <- .eventTimes(
    t_events = c(10, 50, 100),
    t_duration = c(1, 2, 3),
    t_end = 100,
    t_store = 100,
    t_step = 1
)
}
