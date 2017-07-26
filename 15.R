# 
# 
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# 
# 
# 
# How many such routes are there through a 20×20 grid?
# 

a <- sapply(0:20, function(i) {choose(20, i)})
b <- a * a
sum(b)



