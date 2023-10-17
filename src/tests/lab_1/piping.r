#When we use a functional style of programming, piping is your best friend. Consider the 
#standard example of applying functions in what linguists would call “center-embedding”. We 
#start with the input (written inside the inner-most bracketing), then apply the first 
#function round, then the second mean, writing each next function call “around” the previous.

#define the input
input_vector <- c(0.4, 0.5, 0.6)
#first round, then take mean
mean(round(input_vector))
#ex: round(0.4) = 0 return the integer number nearest to the input
#round(0.6) = 1
#round(1.6) = 2

#round(0.5) = 0
#round(1.5) = 2

#round(0.4) = 0
#round(1.4) = 1

#magrittr library
install.packages("magrittr")
library(magrittr)
#Piping lets you pass the result of a previous function call into the next. The magrittr package 
#supplies a special infix operator %>% for piping. The pipe %>% essentially takes what results 
#from evaluating the expression on its left-hand side and inputs it as the first argument in the 
#function on its right-hand side. So x %>% f is equivalent to f(x). Or, to continue the example 
#from above, we can now write:

#for example:
#take the input_vector already defined above, then round it, then take the mean by using the pipe

input_vector %>% round %>% mean
# in the line code 32, 
# the pipe %>% essentially takes what results from evaluating the expression on its left-hand side