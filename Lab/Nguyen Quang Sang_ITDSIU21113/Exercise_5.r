#A friendly colleague has sent reaction time data in a weird format:
#weird_RTs <- c("RT = 323", "RT = 345", "RT = 421", "RT = 50")
#Starting with that vector, use a chain of pipes to: extract the numeric information from the string, 
#cast the information into a vector of type numeric, take the log, take the mean, round to 2 
#significant digits. (Hint: to get the numeric information use stringr::str_sub, which works in this 
#case because the numeric information starts after the exact same number of characters.)

#install two package "stringr" and "dplyr" for using the function str_sub and pipe
install.packages("stringr")
install.packages("dplyr")
install.packages("magrittr")

library (stringr)
library (dplyr)
weird_RTs <- c("RT = 323", "RT = 345", "RT = 421", "RT = 50")

result1 <- weird_RTs %>%
  #extract the numeric information from the string
  #cast the information into a vector of type numeric
  #the start = 6 cause the numeric information starts after the exact same number of characters
  str_sub(start = 6) %>%
  as.numeric() %>%
  #take the log
  log() %>%
  #take the mean
  mean() %>%
  #round to 2 significant digits
  round(digits = 2)
print(result1)