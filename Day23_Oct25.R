A <- function(y){300*y - 2*y^2}

y <- seq(0,300,0.1)
plot(y,A(y),type='l')
plot(y,A(y),type='l',xlim=c(0,150),ylim=c(-100,15000))
abline(v=80,col=3)
abline(v=75,col=5)
A(80)
A(75)