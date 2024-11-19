#Run the custom function code from the top of the reading.
f0 <- function(x,a=0,b=1){(1/(b-a))+0*x}

x <- seq(-1,2,0.1)
y <- f0(x,-1,2)

plot(x,y,type='l',xlim=c(-2,3),ylim=c(0,0.5))
(1/3)*2.2
f <- function(x){f0(x,-1,2)}
draw_rug(f,-1,2)

set.seed(123)
tmp <- runif(25000,-1,2)
hist(tmp,probability = TRUE)
head(tmp)
x <- length(which(tmp < 1.2))
x
x/25000





g <- function(x){4-x^2}
draw_rug(g,-1,2)

#Midpoints
a <- -1
b <- 2
n <- 10
dx <- (b-a)/n
draw_rect_approx(g,a,b,n) 
#Start at half of dx to the right of a, and then step by dx.
xi <- seq(a+dx/2,b,dx)
points(xi,g(xi),pch=16,col=2)
segments(xi,rep(0,length(xi)),xi,g(xi),col=2)
Ai <- g(xi)*dx
sum(Ai)

#Left End-Points
draw_rect_approx(g,a,b,n,method='left') 
#Start a, and then step by dx.
xi <- seq(a,b-dx,dx)
points(xi,g(xi),pch=16,col=2)
segments(xi,rep(0,length(xi)),xi,g(xi),col=2)
Ai <- g(xi)*dx
sum(Ai)

#Right End-Points
draw_rect_approx(g,a,b,n,method='right') 
#Start a plus dx, and then step by dx.
xi <- seq(a+dx,b,dx)
points(xi,g(xi),pch=16,col=2)
segments(xi,rep(0,length(xi)),xi,g(xi),col=2)
Ai <- g(xi)*dx
sum(Ai)


#Repeat with 10, 75, 100, 1000, 50000, 750000, 4000000
#g <- function(x){4-x^2}
a <- -1
b <- 2
n <- 10
dx <- (b-a)/n
#Mid: Start at half of dx to the right of a, and then step by dx.
xi.m <- seq(a+dx/2,b,dx)
#Left: Start a, and then step by dx.
xi.L <- seq(a,b-dx,dx)
#Start a plus dx, and then step by dx.
xi.R <- seq(a+dx,b,dx)
Ai.m <- g(xi.m)*dx
Ai.L <- g(xi.L)*dx
Ai.R <- g(xi.R)*dx
sum(Ai.m)
sum(Ai.L)
sum(Ai.R)
#Repeat with 10, 75, 100, 1000, 50000, 750000, 4000000