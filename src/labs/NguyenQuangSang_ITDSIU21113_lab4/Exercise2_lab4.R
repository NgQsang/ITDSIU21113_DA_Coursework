#script code and lap report by comment in Exercise 2

library(dplyr)

# Assuming you have a data frame or tibble named 'your_data' with a 'Price' variable
mean_price <- data_metro_zip %>%
  summarize(Mean_Price = mean(price, na.rm = TRUE))

#print the mean price
print(mean_price)
#the mean of price is 322914.9 