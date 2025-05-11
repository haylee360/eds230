#' Find maximum value of forest growth ode model
#'
#' @param result the column representing forest growth in units of Carbon from the ODE solver
#'
#' @returns A List of max carbon values
#' @export
#'
#' @examples
maxforest <- function(result){
  max_c <- max(result$C)
  return(list(max_c))
}