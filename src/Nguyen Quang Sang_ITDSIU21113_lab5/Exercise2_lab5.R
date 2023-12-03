#Script code and lap report by comment in Exercise 2-Lab5

#Exercise 2: Find out the mean, median, 
#and mode of variable price for different types of houses.

#Splitting the dataset by 'homeType'
#Using split() method to create subsets of price for each house type.
split_by_homeType <- split(df_new$price, df_new$homeType)

#Calculate mean, median, and mode for each house type
#using the lapply() method to apply a function that calculates the mean, median, and mode 
#for the price variable within each subset of price corresponding to different house types 
#obtained by splitting the dataset based on homeType
summary_stats1 <- lapply(split_by_homeType, function(x) {
  mean_price <- mean(x, na.rm = TRUE)
  median_price <- median(x, na.rm = TRUE)
  mode_price <- names(sort(table(x), decreasing = TRUE))[1]
  
  return(c(mean_price = mean_price, median_price = median_price, mode_price = mode_price))
})

#Convert the list to a data frame for better visualization
#rbind() stands for "row bind" and is used to combine data frames or matrices by rows (i.e., stacking them vertically).
#do.call() is a function that allows you to call another function with a list of arguments.
summary_stats1_df <- do.call(rbind, summary_stats1)