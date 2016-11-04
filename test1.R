set.seed(4901)
n = 10000
x =1:n 
y = 0
#a = .30
#b = .65
#c = .05
#while loop runs N times
while(y<=n)
{
  r = runif(1)
  y = y+1
  if(r<0.3)
  {
    x[y]=(rexp(1,((1/3.2))))
  }
  else if(r<.95)
  {
    x[y] = runif(1,1.2,2)
  }
  else
  {
    x[y] = 0.5
  }
  
}
m = mean(x)
cat("Mean: ",m)
s = sd(x)
cat("Standard Deviation:" ,s)
cat(m + (1.96*(s/sqrt(n))))
cat(m - (1.96*(s/sqrt(n))))

