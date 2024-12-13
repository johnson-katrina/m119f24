###example 1###
x <- seq(-10,2,1e-3)
par(mfrow=c(2,2),mar=c(2,2,0.25,0.25))
plot(x,abs(x+4),type='l',xlim=c(-9,1),ylim=c(-3,5))
points(-4,0,pch=16,col=2)
grid()
plot(x,abs(x+4),type='l',xlim=c(-6,-2),ylim=c(-3,3))
points(-4,0,pch=16,col=2)
grid()
plot(x,abs(x+4),type='l',xlim=c(-4.5,-3.5),ylim=c(-1,1))
points(-4,0,pch=16,col=2)
grid()
plot(x,abs(x+4),type='l',xlim=c(-4.01,-3.99),ylim=c(-0.01,0.01))
points(-4,0,pch=16,col=2)
grid()


###example 2###
f3 <- function(x){sign(x-1)*(abs(x-1))^(1/3)}
x3 <- seq(-5,5,1e-4)
y3 <- f3(x3)

par(mfrow=c(2,2),mar=c(2,2,0.25,0.25))
plot(x3,y3,type='l',xlim=c(-5,5))
points(1,f3(1),pch=16,col=2)
grid()
plot(x3,y3,type='l',xlim=c(0,2),ylim=c(-1,1))
points(1,f3(1),pch=16,col=2)
grid()
plot(x3,y3,type='l',xlim=c(0.5,1.5),ylim=c(-0.75,0.75))
points(1,f3(1),pch=16,col=2)
grid()
plot(x3,y3,type='l',xlim=c(0.99,1.01),ylim=c(-0.01,0.01))
points(1,f3(1),pch=16,col=2)
grid()