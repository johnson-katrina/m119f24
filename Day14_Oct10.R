p <- function(x,lambda=2){
  # x must be a whole number
  (lambda^x/factorial(x))*exp(-lambda)
}

p(1,1)
exp(-1)
p(5,1)

x <- 0:30
par(mfrow=c(1,1),mar=c(2.5,2.5,0.25,0.25))
barplot(p(x),ylim=c(0,0.3),width=rep(1,length(x)),space=1)

x <- 0:30
par(mfrow=c(1,1),mar=c(2.5,2.5,0.25,0.25))
barplot(p(x,1),ylim=c(0,0.3),width=rep(1,length(x)),space=1)



lambda <- seq(0.01,12,0.01)
output <- p(7,lambda)
plot(lambda,output,type='l')
