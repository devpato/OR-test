set.seed(4901)
n  = 10000
x = 1:n
count = 0
y = 0
#Function
normalize.it<- function(a,b,c){
  rnorm(a,b,c)
}
while(y<=n)
{
  r = runif(1,16,24)
  #Calling function
  normalize = normalize.it(1,1200,300)
  y = y + 1
  x[y] = 50 * normalize - r*normalize - 30000
  if(x[y] >= 0)
  {
    count = count + 1
  } 
}
#Printing results
cat("Count: ",1-(count/n))
cat("Mean: ",mean(x))