# episode 1
# generating n fair coin tosses and calculating probability
n = 10^6
r = round(runif(n))
mean(r[1:10000])

# episode 2
# generating n Bernoulli trials with probability p
n = 10^6
r = runif(n) < p
mean(r)
q = rbinom(n,1,p)

# episode 3
# binomial distribution
# B(n,p):P(X=k)=(n choose k)p^k(1-p)^(n-k)
p = 0.3
n = 5
size = 10000
r = rbinom(size, n, p)
hist(r)

# episode 5
x = 0:n
m = matrix(nrow = 2, ncol = n+1)
for(k in x){
m[1,k+1] = choose(n,k)*p^k*(1-p)^(n-k)
m[2,k+1] = sum(output==k)/size
}

barplot(m,names.arg = x,col = c("red","blue"),beside=T)

#episode 6
i = 1
p = 0.3
while(runif(1)<p){i=i+1}
rgeom(1,p)

# episode 8
n = 1e+4
p = 1e-5
r = rgeom(n,p)
max(r, na.rm=TRUE)

# machine epsilon
.Machine$double.eps

#episode 9
#defining function of k returning draws from Bernoulli(1/k) distribution
x = function(k){
return(runif(1)<1/k)
}

#running the loop
for (k in 1:10){
print(k)
print(x(k))
flush.console()
Sys.sleep(1)
}

#episode 11
#drawing the graph used for the presentation
l = 2
png('wykres1.png')
par(bg = 'black')
curve(x+1,from=-l, to=l, col= "ForestGreen",col.axis = "ForestGreen")
curve(exp(x), add = TRUE,from=-l, to=l, col="ForestGreen")
axis(1,pos=0,col="ForestGreen")
axis(2,pos=0,col="ForestGreen")
dev.off()

#episode 12
#generating the loop
max = .Machine$integer.max
while (k < max){
if(runif(1)<1/sqrt(k)){print(k)}
flush.console()
k = k+1
}
