#' Maximum forest growth wrapper function
#'
#' @param growth_func function that calculates forest growth
#' @param max_func function that calculates maximum forest growth
#' @param C size of forest (units of Carbon)
#' @param times - the sequence of times you want to run the model over
#' @param r exponential growth rate
#' @param g linear growth rate
#' @param thresh Canopy closure threshold (units of carbon)
#' @param K carrying capacity (units of carbon)
#'
#' @returns Maximum forest growth outputted from the ODE model
#' @export
#'
#' @examples
maxforestwrapper <- function(growth_func, max_func, Cinitial, K, g, r, times, thresh){
  parms <- list(r = r, K = K, g = g, thresh = thresh)
  result <- ode(y = Cinitial, times = times, func = growth_func, parms = parms, method = "euler")
  colnames(result) <- c("time", "C")
  
  result <- as.data.frame(result)
  
  metrics <- max_func(result = result)
  return(metrics)
}