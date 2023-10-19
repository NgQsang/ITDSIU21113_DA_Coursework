#define a function that takes three arguments
#opoeration1 and operation2 are both functions that take input as an argument and the perform some operation on it
new_applier_function <- function(input, operation1, operation2){
  result_1 <- operation1(input)
  result_2 <- operation2(input)
  #return the sum of the two results
  return(result_1 + result_2)
}

#input vector of 1 to 3
in_vec <- 1:3

#call the function with the input vector and two functions[op1 and op2]
#op1 takes the input vector and returns the second and first element in the reverse order [2:1]
#op2 takes the input vector and returns the third element [3]
f_result <- new_applier_function(in_vec, function(x) x[2:1], function(x) x[3])

#so the is.even function take three agruments