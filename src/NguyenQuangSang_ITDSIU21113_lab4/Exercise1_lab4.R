#script code and lap report by comment in Exercise 1
#continue the lab 3
#use function summarize() to find out how many missing values in variable price

#call the library before using
library(tidyverse)

#set the directory to the folder containing the data
setwd("C:/Users/ADMIN/Documents/NguyenQuangSang_ITDSIU21113_lab4")

#using the summarize() function to find the missing value in variable price
missing_price <- data_metro_zip %>%
  summarize(Missing_Prices = sum(is.na(price)))
print(missing_price)
#there are 861121 missing value in the variable price