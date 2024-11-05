rm(list=ls())

library(data4led)
bulb <- led_bulb(1,seed=123)
ti <- bulb$hours
yi <- bulb$percent_intensity
plot(ti,yi,pch=16)
grid()

c1 <- sum((yi-100)*ti)
c1
b1 <- sum(ti^2)
b1
a1.cv <- c1/b1
a1.cv

a1.best <- a1.cv
f1 <- function(x,a1){100+a1*x}
t <- seq(0,6000,0.1)
lines(t,f1(t,a1.best),col=4)






solvesystem <- function(c11, c12,b1,c21,c22,b2){ 
  c((b1*c22 - c12*b2)/(c11*c22 - c21*c12),
    (c11*b2 - b1*c21)/(c11*c22 - c21*c12))
}

c11 <- sum(ti^2)
c12 <- sum(ti^3)
b1 <- sum((yi-100)*ti)
c21 <- c12
c22 <- sum(ti^4)
b2 <- sum((yi-100)*ti^2)

solvesystem(c11, c12, b1, c21, c22, b2)