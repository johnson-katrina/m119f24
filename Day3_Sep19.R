#create a vector (a list) of inputs
x <- c(-2,-1,0,1,2,3,4,5)
#calculate the corresponding outputs
y <- x^2
#create a graph of point by plotting the (input,output) pairs
plot(x,y)
#connect the points in the plot of y=x^2
plot(x,y,type='l')

#create a user defined function
f <- function(x){x^2}
#plot the function
plot(x,f(x),type='l',col=2)

#create a piecewise function using the ifelse() command
g <- function(x){ifelse(x<1,2*x+0,0*x+3)}
plot(x,g(x),type='l')
  #Q: Does it matter if we include zero in 2*x + 0? No!
  #Q: Does it matter if we include zero in the 0*x + 3? Yes!

#we want more inputs
#create a new list of inputs
x1 <- seq(-2,5,0.001)
#plot the piecewise function
plot(x1,g(x1),type='l')

#Q: Can we graph two functions on the same plot? Yes! :)
  #use lines() to add another curve to a plot
  #use points() to add a collection of points to a plot
  #the window is defaults to the first function plotted
plot(x,f(x),type='l')
lines(x,g(x),col=2)

#Use the ylim argument inside plot() to specify the viewing values for the vertical axis.
  #Use the xlim argument inside plot() to specify the viewing values for the horizontal axis.
plot(x,f(x),type='l',ylim=c(-10,25))
lines(x,g(x),col=2)
#Q: How can we plot the x-axis and y-axis?
  #abline(v=<fill in the x-location for the vertical line>) creates the y-axis
abline(v=0,col='gray')
  #abline(h=<fill in the x-location for the horizontal line>) creates the x-axis
abline(h=0,col='gray')
  #the grid() command will overlay a grid on the plot
grid()
