f <- function(x){3^(-x)}
x <- seq(-2,2,0.1)
plot(x,f(x),type='l',ylim=c(-1,10))
grid()

exp(1)
exp(2)
exp(0.3)
exp(-1)
lines(x,exp(x),col=3)


x <- seq(-4,150,0.1)
y <- 10-sqrt(x+4)
par(mar=c(2.5,2.5,0.5,0.5))
plot(x,y,type='l',xlim=c(-150,150))
grid()