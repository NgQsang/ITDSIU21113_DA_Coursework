#Script code and lap report by comment in Exercise 1-Lab5

#Call the library before using
library(tidyverse)

#Find out the current directory
getwd()

#Set the directory to the folder containing the data
setwd("C:/Users/ADMIN/Documents/da_lab/lab_5")

#Read csv file
df_origin <-read.csv("Zillow-Houston-TX.csv",header = TRUE, stringsAsFactors = FALSE)

#See the names of variables
names(df_origin)

#EXERCISE_1: 
#(Remove all the prefix “results.” in variables)

#Using a regular expression pattern "^"
#the pattern means "match at the start of the string,
#and "results." is the character we are looking for to remove, so -> "^results."
#sub() function searches for a pattern within each element of the character vector
colnames(df_origin)<-sub("^results.","",colnames(df_origin))

#view data
#display the first file rows and columns of the dataset
head(df_origin[, 1:5],5)

#Now, we dealing with the missing value
#In particular, we will look at summary statistics for price and lotAreaValue, 
#either for the whole data set or independently for each type of house

#Because in this lab we just only focus on 3 column price, lotAreaValue, homeType
#so, i will remove another columns

#Remove those unnecessary columns
df_new <-df_origin[, c("homeType", "lotAreaValue", "price")]

#Now, we dealing with the missing value
#Firstly, i will checking the numbers of missing value
#Because if the numbers of missing value is not too big, it's mabye not influential in the analysis

#Using the colSums() and is.na() method()
missing_count <- colSums(is.na(df_new))

#Summary
summary(df_new)

#So, as we can see the missing value are 0, 7, 13 respectively 3 columns
#So, in the columns homeType, it's maybe not significantly in the analysis
#The numbers of missing value in lotAreaValue and price is also small
#But the datasets is also not too big. So we can assuming that it's maybe can have some significantly
#In this case,we can use several way to dealing with the missing value
#(+) 1.Removing rows with missing values
#(+) 2.Imputation
#(+) 3.Impute with specific values

#In the first way(Removing rows), just dropping the row when it's not significantly impact for the analysis
#But, we already asumme that the missing in "LotAreaValue" and "price" are significantly

#In the second way(Imputation), replace missing values with a summary statistic such as mean, median, or mode of the column.

#In the third way(Impute with specific values), for categorical or qualitative columns like homeType,

#Simpler methods like mean/median imputation(second way) could also be viable options
#Mean imputation works well for normally distributed data without significant outliers.
#Median imputation is often preferred when the distribution of the data is skewed or contains outliers.

#So, i will create a boxplot to visualize the outlier of "LotAreaValue" and "price"
#Note:
#The median (line inside the box)
#Interquartile range (box)
#Outliers (points outside the whiskers)

#create a larger plotting area
par(mar = c(5, 5, 4, 2) + 0.1)
#boxplot for lotAreaValue
boxplot(df_new$lotAreaValue, main = "Boxplot of lotAreaValue")

par(mar = c(5, 5, 4, 2) + 0.1)
#boxplot for price
boxplot(df_new$price, main = "Boxplot of price")

#So, as we can see the lotAreaValue don't have outlier
#But, the price have
#So, mean for lotAreaValue and median for the price

# Impute missing values in numeric columns with mean and median
df_new$lotAreaValue[is.na(df_new$lotAreaValue)] <- mean(df_new$lotAreaValue, na.rm = TRUE)
df_new$price[is.na(df_new$price)] <- median(df_new$price, na.rm = TRUE)

#For categorical or qualitative columns like homeType, 
#i will choose to impute missing values with a specific category 
#like "Unknown" or the mode of the column.
# Impute missing values in categorical columns with mode or "Unknown"
# Replace empty strings with "Unknown"
df_new$homeType[df_new$homeType == ""] <- "Unknown"

#So, the dataset is completely cleaned after dealing with the missing value