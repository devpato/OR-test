#Declaring Variables
set.seed(4901)
n = 10000
u1 = runif(n)
u2 = runif(n)
x1 = 1:n
x2 = 1:n
#Functions
  square.cos<- function(u1,u2){
    sqrt(-2*log(u1))*cos(2*pi*u2)
  }
  square.sin<- function(u1,u2){
    sqrt(-2*log(u1))*sin(2*pi*u2)
  }
  plot.it<- function(x){
    hist(x)
  }
  sum.it<-function(x1){
    sum(x1<=1.96)/n
  }
#Calling Function  
  x1 = square.cos(u1,u2)
  x2 = square.sin(u1,u2)
#Plotting X1 and X2
  plot.it(x1)
  plot.it(x2)
#Calculating Mean
  cat("Mean X1:",mean(x1))
  cat("Mean X2:",mean(x2))
#Calculating the Standard Deviation
  cat("SD for X1:",sd(x1))
  cat("SD for X2:",sd(x2))
#OTher operations
  cat("COV:", cov(x1,x2))
  sum = sum.it(x1)
  cat("SUM:", sum)

