# Author: Adam L. Rich
# Date:   February 4, 2016
# Description:
#
#   Pandigital products
#



# 123456789
# x * y = z
# log(x) + log(y) = log(z)
# int(log(x)) + int(log(y)) + int(log(z)) = 9


# digits in x     range of digits in y
# 1               4
# 2               3


i <- 0
out <- rep(0, times = 10000)

for (x in 1:98) {
  ymin <- as.integer(1000/x) - 1
  ymax <- as.integer(9999/x) + 1
  
  for (y in ymin:ymax) {
    z <- x * y
    m <- paste0(as.character(x), as.character(y), as.character(z))
    n <- strsplit(m, '')
    if (length(unique(n[[1]])) == 9) {
      i <- i + 1
      out[i] <- z
      print(paste(x, y, z))
    }
  }
}



sum(unique(out))


