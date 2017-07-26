# Author: Adam L. Rich
# Date:   January 17, 2016
# Description:
#
#   Project Euler #30
#
#   Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#   
#   1634 = 14 + 64 + 34 + 44
#   8208 = 84 + 24 + 04 + 84
#   9474 = 94 + 44 + 74 + 44
#   As 1 = 14 is not a sum it is not included.
#   
#   The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#   
#   Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
#


rm(list = ls(all = T))
setwd('p:/home/projects/development/ProjectEuler')
source('Functions.R')
source('Digital.R')
source('w:/sl/actuarial/r-software/utilities/dev/Enhanced.R')


# s is all possible summands
# n is max number of digits in the number
# a is all possible combinations

f <- 5
n <- 6
s <- as.integer((0:9)^f)
a <- as.integer(0:(10^n - 1))
out <- rep(FALSE, 10^n)


# 1000 as an example
i <- 1001L
X <- a[i]
c1000 <- as.integer(as.numeric(as.Digital(X)))
i1000 <- c1000 + 1L
s1000 <- s[i1000]


for (i in 1:length(a)) {
  X <- a[i]
  cX <- as.integer(unclass( as.Digital(X) ))
  iX <- cX + 1L
  sX <- s[iX]
  out[i] <- sum(sX) == X
}

b <- a[c(F, F, out[-(1:2)])]
sum(b)


