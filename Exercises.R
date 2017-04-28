# Fair coin toss
# Imagine you have a stick and break it in two points. 
# What is the probability that you can build a triangle out of resulting three pieces? 
# In R write a function that draws two independent numbers from uniform distribution 
# and rerurns TRUE if they correspond to a division of [0,1] interval that enables to build a triangle and FALSE otherwise. 
# Using this function simulate a vector of 10000 observations and calculate what is the the percentage of TRUE observations. 
# Does it match your probability estimation?

# Binomial
# What is the probability that while drawing 2 out of n numbers we will get the first and the last number? 
# In R write a function that takes an integer argument n and returns an integer between 1 and n with equal probability. 
# Using this function build a matrix with 2 colums and 10000 rows, where each row stores 2 different numbers drawn from n. 
# Calculate the percentage of rows that store 1 and n. 
# Does it match with your probability calculation? 

# Geometric 
# A discrete random variable X is defined as number of unsucessful Bernoulli trials
# before the first two successful trials in a row. 
# Write a function in R that takes as argument p-probability of success in single Bernoulli trial and returns a value of X.

# Borel Cantelli 
# We have a box with certain amount of black and white marbles (at least one each).
# We draw one marble, write down the result and put it back to the box. 
# After each draw we put one extra black marble to the box. 
# What is the probability we will be drawing white marble forever? 
# Instead of adding one black marble let's add number of black marbles corresponding to the draw number 
# i.e. after the first draw we add one black marble, after the second draw we add two, after the third we add three and so on. 
# What is now the probability we will be drawing the white marble forever?
