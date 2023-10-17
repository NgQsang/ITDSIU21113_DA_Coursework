new_applier_function <- function(input,operation1, operation2){
  result1 <- operation1(input)
  result2 <- operation2(input)
  return(result1+result2)
}

new_applier_function(
  input = 1:3,              # input vector 
  function_to_apply = function(in_vec) {
    return(c(in_vec[c(2,1)]))
  } 
)
