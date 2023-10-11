#create a vector a of 10 random numbers between 1 and 50
a <- sample (1:50, 10, replace = TRUE)
#create a vector b of 10 numbers that have the same length as a and follow the algorithm [a[i-1]+a[i]+a[i+1]]/3
#the first and last element of b are follow the algorithm [0+a[1]+a[2]]/3 and [a[9]+a[10]+0]/3
b <- numeric(length(a))
for (i in 1:(length(a)-1)){
  if (i==1){ 
    b[i] <- mean(c(0, a[i], a[i+1])) 
  }
  else if (i == length(a)){
    b[i] <- mean(c(a[i-1], a[i], 0)) 
  } 
  else {
    b[i] <- mean(a[(i-1):(i+1)]) 
  }
}
#the library tibble is used to create a data frame
library(tibble)
result_ <- tibble(a=a,b=b)
print(result_)

