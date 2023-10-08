#using library purrr to using map_dbl function to solve the same problem
library(purrr)
#the input vector
input_vec <- c(12, 6, 18)

#the anonymous function that returns a vector whose ith element in the cu
result4 <- map_dbl(seq(input_vec), function(i){
  cumulative_product <- prod(input_vec[1:i])
  cumulative_sum <- sum(input_vec[1:i])
  
  return(cumulative_product / cumulative_sum)
})
print(result4)