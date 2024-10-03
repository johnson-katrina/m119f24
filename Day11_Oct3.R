f <- function(x){-2 + 3*exp(2*x)}
x <- seq(-100,100,1)
plot(x,f(x),type='l',ylim=c(-10,10),xlim=c(-10,10))
grid()

uniroot(f,c(-5,0))$root
0.5*log(2/3)

g <- function(x){(-13 + 2*x)*exp(-0.05*x)}
x <- seq(-10,10,1)
plot(x,g(x),type='l',ylim=c(-10,10),xlim=c(-10,10))
grid()
abline(h=0,col=2)
uniroot(g,c(0,10))$root

g_shift <- function(x){g(x) - 5}
uniroot(g_shift,c(10,15))$root


library(data4led)
bulb <- led_bulb(1,seed = 123)

t <- bulb$hours
y1 <- bulb$percent_intensity

par(mfrow=c(1,1),mar=c(2,2,3,0.25),oma=rep(0.5,4))
plot(t,y1,xlab="Hour", ylab="Intensity(%) ", pch=16)


f5 <- function(x,a0=100,a1=0,a2=1){ (a0 + a1*x)*exp(-a2*x) }

x <- seq(-10,800001,2)
#Initial guess from preparation work.
yM <- f5(x,a0=100,a1=0.00487,a2=0.0000425)

par(mfrow=c(1,2),mar=c(2,2,3,0.25),oma=rep(0.5,4))
plot(t,y1,xlab="Hour ", ylab="Intensity(%) ", pch=16,main='f5')
lines(x,yM,col=2)
plot(t,y1,xlab="Hour ", ylab="Intensity(%) ", pch=16, xlim = c(-10,80000),ylim = c(-10,120))
lines(x,yM,col=2)

#Second guess after some dynamic exploration in Desmos.
yM <- f5(x,a0=100,a1=0.0064,a2=0.00005)

par(mfrow=c(1,2),mar=c(2,2,3,0.25),oma=rep(0.5,4))
plot(t,y1,xlab="Hour ", ylab="Intensity(%) ", pch=16,main='f5')
lines(x,yM,col=2)
plot(t,y1,xlab="Hour ", ylab="Intensity(%) ", pch=16, xlim = c(-10,80000),ylim = c(-10,120))
lines(x,yM,col=2)