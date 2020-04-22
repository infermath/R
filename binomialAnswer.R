# There are n choose 2 possible pairs
# We are looking for pair {1,n}
# Probability is 1/(n choose 2)

#define a function that draws number from 1 to n
k = function(n)
{
result = round(runif(1)*n+0.5)
}

#define parameters
n = 7
m = 10000

#build matrix
x = matrix(nrow = m, ncol =2)
for(i in 1:m)
{
x[i,1] = k(n)
x[i,2] = k(n)
while (x[i,1] == x[i,2]) x[i,2] = k(n)
}

#count cases when first and last integers are drawn
count = 0
for(i in 1:m)
{
if ((x[i,1] == 1 && x[i,2] == n) || (x[i,1] == n && x[i,2] == 1)) count = count +1
}

probability = count/m