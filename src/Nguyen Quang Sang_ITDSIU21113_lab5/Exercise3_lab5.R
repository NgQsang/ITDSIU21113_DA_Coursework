#Script code and lap report by comment in Exercise 3-Lab5

#Calculate variance, standard deviation, and IQR for each house type
summary_stats2 <- lapply(split_by_homeType, function(x) {
  variance_price <- var(x, na.rm = TRUE)
  sd_price <- sd(x, na.rm = TRUE)
  iqr_price <- IQR(x, na.rm = TRUE)
  
  return(c(variance_price = variance_price, sd_price = sd_price, iqr_price = iqr_price))
})

#visualization
summary_stats2_df <- do.call(rbind, summary_stats2)