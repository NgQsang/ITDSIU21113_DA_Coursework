#script code and lap report by comment in Exercise 7

library(dplyr)
#use the group_by function to group by StateName and calculate the mean Price for each group
result_ex7 <- data_metro_zip %>%
  group_by(StateName) %>%
  summarize(Mean_Price_ex7 = mean(price, na.rm = TRUE))

#print the result
print(result_ex7)