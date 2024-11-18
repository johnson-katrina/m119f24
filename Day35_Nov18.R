#Run the draw_rug() code from the reading (and the Wiki).
g <- function(x){x^2}
draw_rug(g,0,5)
g(5)
Area_g <- 5*g(5)/3
Area_g
k <- 1/Area_g

f <- function(x){3/125*x^2}
draw_rug(f,0,5)
f(5)
Area_f <- f(5)*5/3
Area_f

cdf <- function(x){ifelse(x>=0 & x<=5,1/125*x^3,ifelse(x>5,1,0))}
x <- seq(-5,10,0.1)
plot(x,cdf(x),type='l')

