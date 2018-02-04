#There is a nice geometric solution to that problem
#You can buld a triangle from 3 pieces only if none is longer then other two
#Each division of the stick can be mapped onto a point of equilatteral triangle
#Only the middle quarter of the triange corresponds to division which satisfies that condition 
#Visualisation: https://www.cut-the-knot.org/Curriculum/Probability/TriProbability.shtml

triangle = function()
{
#draw two numbers from uniform
x1 = runif(1)
x2 = runif(1)

#put them in order
y1 = min(x1,x2)
y2 = max(x1,x2)

#check if none of the pieces is longer than other two (triangle condition)
result = TRUE
if (max(y1, y2-y1, 1-y2) > 0.5) result = FALSE
return(result)
}

#use function for simulation
n = 10000
sum = 0
for(k in 1:n){
sum = sum + triangle()
}

probability = sum/n