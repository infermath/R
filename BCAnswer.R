#Without loss of generality we can assume we start with 1 white and 1 black marbles
#The probability of drawing white marble in nth draw is therefore 1/(n+1)
#Sum of probabilities 1/n is divergent (infinite) with n going to infinity
#Therefore according to Borel Cantelli lemma probability that we will be drawing white marble infinitely many times is 1

#In the second case we have 1 white vs 1+2+...+n = n(n+1)/2 black marbles
#The probability of drawing white marble in nth draw is therefore 1/(n(n+1)/2+1)
#Sum of probabilities 1/n^2 is convergent (finite) with n going to infinity
#Therefore according to Borel Cantelli lemma probability that we will be drawing white marble infinitely many times is 0

#Note that is is enough to know order of magnitude (e.g. n, n^2) to know if series is convergent 
#For more on series convergence https://en.wikipedia.org/wiki/Convergent_series

   