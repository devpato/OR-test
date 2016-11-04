set.seed(4901)
n = 10000
x = 0
m = 0
t = 0
f = 0
#functions
mean.it<-function(x){
  mean(x)
}
variance<-function(x){
  sd(x)*sd(x)
}
plot.it<-function(x){
  hist(x)
}
while(t<=n)
{
  s = 0
  t = t + 1
  for(i in  1:3 )
  {
    r = runif(1)
    if(r<1/6)
    {
      s = s + 1
    }
  }
  p = s - 1
  x[t] = p
}
m = mean.it(x)
cat("Mean:", m)
var = variance(x)
cat("Variance:",var)
plot.it(x)