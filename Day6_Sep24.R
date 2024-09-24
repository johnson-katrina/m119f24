f <- function(x){x^3}

x <- seq(-3,3,0.1)
plot(x,f(x),type='l')
grid()
#f(x+2) produces outputs following the rule y=(x+2)^3
lines(x,f(x+2),col=2)
#f(x)+2 produces outputs following the rule y=x^3 + 2
lines(x,f(x)+2,col=3)

#How do the two user defined functions compare?
  #Note: The dot in R does not indicate a method.

#The default parameter values are defined.
f.quad1 <- function(x,a=1,b=0,c=0){
  a*x^2 + b*x + c
}

#The default parameter values are not defined.
f.quad2 <- function(x,a,b,c){
  a*x^2 + b*x + c
}

f.quad1(1/2)
  #No error from f.quad1() uses the parameter values since no other values have been specified.
f.quad2(1/2)
  #We see an error from f.quad2() since the parameter values have not been specified.

f.quad1(1/2)
f.quad2(1/2,1,0,0)
  #Now that the parameters values are defined the two functions run and give the same output.

#Notice the outputs are different because f.quad1() is using the default parameter values.
f.quad1(0)
f.quad2(0,1,2,7)

#We can still specify the values in both function and the output is the same.
f.quad1(0,1,2,7)
f.quad2(0,1,2,7)

#Question from class: Can we specify the default values as NULL?
f.quad3 <- function(x,a=NULL,b=NULL,c=NULL){
  a*x^2 + b*x + c
}
#We don't get an error but we also don't get a real number output.
f.quad3(1/2)
#Once we specify the parameter values we get a real number output.
f.quad3(1/2,1,0,0)