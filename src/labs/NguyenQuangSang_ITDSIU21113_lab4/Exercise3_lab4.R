#script code and lap report by comment in Exercise 3
library(dplyr)

#group your data by RegionType and calculate the mean Price for each group
average_price <- data_metro_zip %>%
  group_by(RegionType) %>%
  summarize(Average_Price = mean(price, na.rm = TRUE))

#print the result
print(average_price)

#The Average House price is differ by RegionType