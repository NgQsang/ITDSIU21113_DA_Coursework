#using library purrr to using map_dbl function to solve the same problem
library(purrr)
#the input vector
input_vec <- c(12, 6, 18)

#using the map_dbl function to apply the function to each element of the input vector
result4 <- map_dbl(seq(input_vec), function(i){
    #example of the cummulative product and sum:
    #input_vec = c(12, 6, 18)
    #cumulative_product = c(12, 12*6, 12*6*18)
    #cumulative_sum = c(12, 12+6, 12+6+18)
  cumulative_product <- prod(input_vec[1:i])
  cumulative_sum <- sum(input_vec[1:i])
  
  return(cumulative_product / cumulative_sum)
})
print(result4)