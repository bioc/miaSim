#' Generate simulation times and the indices of time points to return
#' in simulation functions.
#'
#' @param t.start Numeric scalar indicating the initial time of the simulation.
#' (default: \code{t.start = 0})
#' @param t.end Numeric scalar indicating the final time of the dimulation
#' (default: \code{t.end = 1000})
#' @param t.step Numeric scalar indicating the interval between simulation steps
#' (default: \code{t.step = 0.1})
#' @param t.store Integer scalar indicating the number of evenly distributed
#' time points to keep (default: \code{t.store = 100})
#'
#' @return lists containing simulation times (t.sys) and the indices to keep.
#' @keywords internal
#'
#'@export
tDyn <- function(t.start = 0, t.end = 1000, t.step = 0.1, t.store = 1000){

    t.total <- t.end-t.start

    t.sys <- seq(t.start, t.end, by = t.step)

    t.index <- seq(1, length(t.sys), by=round(length(t.sys)/t.store))

    return(list("t.sys" = t.sys, "t.index" = t.index))
}