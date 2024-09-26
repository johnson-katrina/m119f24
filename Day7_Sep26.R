i <- 3:7
(2+i^2)
sum((2+i^2))
sum((2+i^2))/3

f <- function(x){ifelse(x < -2, -x - 4, ifelse(x <= 2, 0*x -2, x - 4))}
x <- seq(-5,5)
plot(x,f(x),type='l')
grid()