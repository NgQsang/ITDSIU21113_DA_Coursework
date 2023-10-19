#define the function taking two arguments
bigger_100 <- function(x1, x2) {
  #conditional
  return (as.integer(x1 * x2 > 100))
}

#call the function to test it
bigger_100(10, 50)
bigger_100(10, 2)