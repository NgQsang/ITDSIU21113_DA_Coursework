#script code and lap report by comment in Exercise 4

#calculate the median of Price
median_price <- median(data_metro_zip$price, na.rm = TRUE)

#calculate the standard deviation of Price
std_price <- sd(data_metro_zip$price, na.rm = TRUE)

#print the results
cat("Median Price: ", median_price, "\n")
cat("Standard Deviation of Price: ", std_price, "\n")

#the median of the price is 244411.6 
#the std of the price is 302391.9 