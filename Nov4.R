rm(list=ls())

library(data4led)
bulb <- led_bulb(1,seed=123)
ti <- bulb$hours
yi <- bulb$percent_intensity

b1 <- sum((yi-100)*ti)
b1
c11 <- sum(-1*ti^2)
c11
c12 <- sum(-1*ti^3)
c12

b2 <- sum((yi-100)*ti^2)
b2
c21 <- -sum(ti^3)
c21
c12
c22 <- -sum(ti^4)
c22
