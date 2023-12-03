#script code and lap report by comment in Exercise 5

#also using the same library as the exercise 4
library(dplyr)

#I want to ensure that the date value returned is after 8/31/2010
#find the maximum date in the dataset
max_date_in_dataset <- max(data_new_4$Days)

#sorted the data
sorted_data <- data_new_4 %>%
  arrange(Days)

#filter
data_filtered <- sorted_data %>%
  #just setting the condition inside the fillter function
  filter(Prices < 300000, Days > as.Date("31-08-2010"), Days <= max_date_in_dataset)

head(data_filtered[, 1:4],15)