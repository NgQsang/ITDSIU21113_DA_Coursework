#define the function to check sum of two numbers is even
#the even number is the number divide 2 equal 0
is.even <- function(x1, x2) {
  return (((x1 + x2) %% 2) == 0)
}

#call the function to test it
is.even(10, 50)
is.even(10, 3)

#so the is.even function take two agruments