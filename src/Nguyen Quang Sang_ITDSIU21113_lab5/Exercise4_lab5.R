#Script code and lap report by comment in Exercise 4-Lab5

# Calculate the 90/10 ratio for each house type
summary_stats3 <- lapply(split_by_homeType, function(x) {
  quantile_90 <- quantile(x, 0.9, na.rm = TRUE)
  quantile_10 <- quantile(x, 0.1, na.rm = TRUE)
  
  ratio_90_10 <- quantile_90 / quantile_10
  
  return(ratio_90_10)
})

#visualization
summary_stats3_df <- data.frame(do.call(rbind, summary_stats3))