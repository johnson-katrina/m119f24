fxx <- 2
fxy <- 4
fxz <- 0
fyy <- 2
fyz <- 2
fzz <- 2

(D1 <- fxx)
(D2 <- det(matrix(c(fxx,fxy,fxy,fyy),2,2,byrow=TRUE)))
(D3 <- det(matrix(c(fxx,fxy,fxz, fxy,fyy,fyz, fxz,fyz,fzz),3,3,byrow=TRUE)))

data <- read.csv(url("https://byuistats.github.io/M119/data3_ls.csv"))
x <- data$x
y <- data$y
length(x)

a <- sum(2*y*exp(-x))/sum(2*(exp(-x))^2)
a
f <- function(x,a=1){a*exp(-x)}
plot(x,y,pch=16)
t <- seq(-2,5,0.001)
lines(t,f(t,a),col=3)
