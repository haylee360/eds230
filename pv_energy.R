pv_energy <- function(A, r = 0.2, H, PR = 0.75){
  E = A * r * H * PR
  return(E)
}



pv_energy(A = 20, H = 300)
