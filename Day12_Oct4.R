f <- function(x){x^2 + x - 6}

x <- seq()

g <- function(x){3*x-5 - log(x)}
x <- seq(0,10,0.0001)
plot(x,g(x),type='l',xlim=c(0,4))
grid()
abline(h=0,col=2)

uniroot(g,c(1,10))$root
uniroot(g,c(0.001,1))$root