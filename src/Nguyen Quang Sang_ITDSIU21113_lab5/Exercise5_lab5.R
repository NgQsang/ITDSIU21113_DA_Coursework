#Script code and lap report by comment in Exercise 5-Lab5

#Calculate the covariance between price and lotAreaValue
#cov() computes the covariance between two vectors or variables
#Note: There are different unit measurements in variable lotAreaValue (sqft, acres). 
#Therefore, you should change them to the same unit measurement.

#Create a new dataframe contain the lotAreaUnit
df_new2 <-df_origin[, c("homeType", "lotAreaValue", "price", "lotAreaUnit")]

#Now, filling the missing value again and also convert the unit measurements
#In this case, you can convert sqft to acres or acres to sqft
#But i choose the acres to sqft

# Impute missing values in numeric columns with mean and median
df_new$lotAreaValue[is.na(df_new$lotAreaValue)] <- mean(df_new$lotAreaValue, na.rm = TRUE)
df_new$price[is.na(df_new$price)] <- median(df_new$price, na.rm = TRUE)

df_new$homeType[df_new$homeType == ""] <- "Unknown"

covariance <- cov(df_new$price, df_new$lotAreaValue, use = "complete.obs")

#Print the covariance
print(covariance)

#So, the covariance is 198973644