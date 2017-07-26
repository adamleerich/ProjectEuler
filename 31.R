# Author: Adam L. Rich
# Date:   February 4, 2016
# Description:
#
#   How many different ways to make $X given an unlimited 
#   set of coins of fixed denominations
#


ways <- function(total, coins) {
  
  total <- total[1]
  coins <- unique(coins[coins > 0])
  
  if (length(coins) == 0) return(0)
  
  if (length(coins) == 1) {
    if (total %% coins == 0) {
      return(1)
    } else {
      return(0)
    }
  }
  
  mcoin <- max(coins)
  q <- as.integer(total / mcoin)
  rcoins <- setdiff(coins, mcoin)
  
  out <- 0
  for(x in 0:q) {
    out <- out + ways(total - x * mcoin, rcoins)
  }
  
  return(out)
}



ways(200, c(200, 100, 50, 20, 10, 5, 2, 1))