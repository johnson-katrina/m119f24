#Read in the Data for the Brain Gains
data <- read.csv(url("https://byuistats.github.io/M119/logLikelihood_practice.csv"))
x <- data$x
y <- data$y2
#How many data points?
length(x)
#What does the data look like?
plot(x,y,pch=16)

## Create a function to solve a system of equations. 
solvesystem <- function(c11, c12,b1,c21,c22,b2){ 
  c((b1*c22 - c12*b2)/(c11*c22 - c21*c12),
    (c11*b2 - b1*c21)/(c11*c22 - c21*c12))
}

#Identify the constants and solve the sysytem dl/db = 0 and dl/dm = 0
  #b is the first variable 
  #c11 is the constant multiplied by b in the dl/db = 0 equation
c.11 <- 50
c.12 <- sum(x)
c.22 <- sum(x^2)
b.1 <- sum(y)
b.2 <- sum(x*y)
sol <- solvesystem(c.11, c.12, b.1, c.12, c.22, b.2)
best.b <- sol[1] 
best.m <- sol[2] 
best.b
best.m

#Identify the constants and solve the sysytem dl/dm = 0 and dl/db = 0
#m is the first variable 
#c11 is the constant multiplied by m in the dl/dm = 0 equation
c.11 <- sum(x^2)
c.12 <- sum(x)
c.22 <- 50
b.1 <- sum(x*y)
b.2 <- sum(y)
sol <- solvesystem(c.11, c.12, b.1, c.12, c.22, b.2)
best.m <- sol[1] 
best.b <- sol[2] 
best.m
best.b



#We can do the whole process again...
data <- read.csv(url("https://byuistats.github.io/M119/logLikelihood_practice.csv"))
x <- data$x
y1 <- data$y1
length(y1)
plot(x,y1)