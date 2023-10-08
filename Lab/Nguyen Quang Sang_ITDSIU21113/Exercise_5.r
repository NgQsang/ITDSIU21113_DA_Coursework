install.packages("stringr")
install.packages("dplyr")

library (stringr)
library (dplyr)
weird_RTs <- c("RT = 323", "RT = 345", "RT = 421", "RT = 50")
result1 <- weird_RTs %>%
  str_sub(start = 6) %>%
  as.numeric() %>%
  log() %>%
  mean() %>%
  round(digits = 2)
print(result1)