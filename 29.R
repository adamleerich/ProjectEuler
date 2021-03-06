# Author: Adam L. Rich
# Date:   January 17, 2016
# Description:
#
#   Euler Project #29
#
# Consider all integer combinations of ab for 2 = a = 5 and 2 = b = 5:
# 
# 22=4, 23=8, 24=16, 25=32
# 32=9, 33=27, 34=81, 35=243
# 42=16, 43=64, 44=256, 45=1024
# 52=25, 53=125, 54=625, 55=3125
# If they are then placed in numerical order, with any repeats removed, we get the following sequence of 15 distinct terms:
# 
# 4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125
# 
# How many distinct terms are in the sequence generated by ab for 2 = a = 100 and 2 = b = 100?
# 


setwd('p:/home/projects/development/ProjectEuler')
source('Functions.R')
source('w:/sl/actuarial/r-software/utilities/dev/Enhanced.R')


m <- 100
l <- length(PrimeFactorMask(m))
out <- matrix(data = 0, nrow = (m-1)^2, ncol = l + 2)


for(x in 2:m) {
  for(y in 2:m) {
    out[(x-1) + (y-2) * (m-1), ] <- c(PrimeFactorMask(x, m) * y, x, y)
  }
}


nrow(out)
nrow(unique(out))
nrow(unique(out[, 1:l]))


