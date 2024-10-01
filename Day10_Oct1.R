h <- function(x){3*x-15}
uniroot(h,c(3,10))
uniroot(h,c(3,10))$root

h_shift <- function(x){h(x) - 6}
uniroot(h_shift,c(3,10))$root

h_shift2 <- function(x){h(x) - exp(-x + 6)}
uniroot(h_shift2,c(3,10))$root
