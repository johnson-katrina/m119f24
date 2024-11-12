rm(list=ls())
data <- read.csv(url("https://byuistats.github.io/M119/data5_ls.csv"))
x <- data$x
y <- data$y

plot(x,y,pch=16)

#Max. Loglikelihood
a <- sum(y*log(x))/sum((log(x))^2)
a
#The 2nd derv of l is negative at this value of a, so we have found a maximizer of l.

f <- function(x,a){a*log(x)}
x1 <- seq(0,5,0.01)
lines(x1,f(x1,a),col=4)


#Min Square Errors
#Same critical value
#The 2nd derv of S is positive at this value of a, so we have a minimizer of S.
#This makes sense because l is a transformation of S.
  #l is a verital shift and vertical reflection and compression of S.
