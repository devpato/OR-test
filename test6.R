set.seed(4901)
n = 10000
x = 1:n
p = 0
sold = 0
bP = 0
a = 0
r = unif()
z = 0
#Function
unif<- function()
{
  runif(1)
}
mean.it<-function(x){
  mean(x)
}
op<- function(){
  y = unif()
  if(y < .95)
  {
    sold = 7
  }
  else if(y < .8)
  {
    sold = 6
  }
  else if(y < .35)
  {
    sold = 5
  }
  else
  {
    sold = 8
  }
}
op2<- function(){
  for( f in 1:bP){
    l = unif()
    if(l < .95)
    {
      a = 20
    }
    else if(l < .8)
    {
      a = 15
    }
    else if(l < .4)
    {
      a = 10
    }
    else
    {
      a = 25
    }
    p = p + b
  }
}
while(z<=n)
{
  z =  z + 1
  if(r<.4)
  {
    op()
    bP = sold -4
    op2()
    x[f] = p
  }
}
cat("Mean: ", mean.it(x))