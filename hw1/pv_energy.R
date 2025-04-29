# Author: Haylee Oyler
# EDS 230 HW 1


#' Energy produced from a photovoltaic system
#'
#' @param A (int) solar panel area in meters squared
#' @param r (int) panel yield (0-1), default value is 0.2
#' @param H (int) annual average solar radiation (kWh)
#' @param PR (int) performance ratio (0-1), default value is 0.75
#'
#' @returns Total energy produced in kWh
#' @export
#'
#' @examples pv_energy(A = 20, H = 300)
#' 

pv_energy <- function(A, r = 0.2, H, PR = 0.75){
  E = A * r * H * PR
  return(E)
}

pv_energy(A = 20, H = 300)
