#' #'  Logistic forest growth derivative
#' @param time time since start
#' @param C size of forest (units of Carbon)
#' @param parms - as list with four values, r, g, K, thresh
#' @param r exponential growth rate
#' @param g linear growth rate
#' @param thresh Canopy closure threshold (units of carbon)
#' @param K carrying capacity (units of carbon)
#' @return derivative of forest size with time

dforestgrowth <- function(time, C, parms) {
  if (C < parms$thresh) {
    dC <- parms$r * C
    return(list(dC))
  } else {
    dC <- parms$g * (1 - C / parms$K)
    return(list(dC))
  }
}


