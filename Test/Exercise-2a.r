is_sum_even <- function(num1,num2){
  sum_result <- num1+num2
  return(sum_result %% 2 ==0)
}
result <- is_sum_even(5,6)
result

