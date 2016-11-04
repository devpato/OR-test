set.seed(4901)
n = 10000
#Variables
  money = 0
  h = 0
  counter = 0
  y = 0
  z  =  0
# of games
  m = 100
#functions
  operation <- function(prob){
    20*prob - (1-prob)
  }
while(y<=n)
{
  y = y +1
  x = 0
  for(i in 1:m)
  {
    p = runif(1)
    if(p >= 0.5)
    {
      x = x + 1
      h = h + 1
    }
  }
  if(x >= 60)
  {
    money = money + 20
    counter = counter + 1
  }
  else
  {
    money = money - 1
  }
}

cat(h)
cat(money)
#Probability of winning
  cat(counter/10000)
  prob = (counter/10000)
  
  op = operation(prob)
  cat(op)