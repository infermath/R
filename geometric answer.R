#Below solution makes use of recursion
#It means the function is calling itself

#define function
x = function(p)
{
#We make first Bernoulli trial
x0 = runif(1)

#if its a Fail we increse number of unsucessful trials by 1 and try again
if (x0>p) result = result+1+x(p)
else{
	#Otherwise we look at second trial
	x1=runif(1)

	#If its a Fail we increse number of unsucessful trials by 2 and try again
	if(x1>p) result = result+2+x(p)
	
	#If both are successful we finish
	else result = 0
} 
return(result)
}