V <- function(w){3/2*w - 1/4* w^3}

x <- seq(0,6,0.1)
plot(x,V(x),type='l',ylim=c(-0.5,2),xlim=c(0,3))
