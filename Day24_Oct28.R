curve <- function(x){8/x}
f <- function(x){sqrt(x^2+64/x^2)}

x <- seq(-10,10,0.1)
plot(x,curve(x),type='l',xlim=c(-5,5),ylim=c(-2,10))
lines(x,f(x),col='blue')
grid()