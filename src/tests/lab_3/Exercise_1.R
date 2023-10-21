#script code and lap report by comment in Exercise 1
#Ex1) Let’s make the two datasets to become tidy data

#find out the current directory.
getwd()

#call the library before using
library(tidyverse)

#set the directory to the folder containing the data
setwd("C:/Users/ADMIN/Documents/lab3")

#read csv file
#make the first dataset tidy
data_origin_1 <-read.csv("Zip_zhvi_4bd(1).csv",header = TRUE, stringsAsFactors = FALSE)

#way to look at the data is to print it on your screen.
glimpse(data_origin_1)

#using a regular expression pattern "^"
#the pattern means "match at the start of the string,
#and "X" is the character we are looking for to remove, so -> "^X"
#sub() function searches for a pattern within each element of the character vector
colnames(data_origin_1)<-sub("^X","",colnames(data_origin_1))

#view data
#display the first ten rows and columns of the dataset
head(data_origin_1[, 1:10],10)

#Using pivot_longer to make the data set less large (include all date values in one column).

data_new_1 <- data_origin_1 %>%
  pivot_longer(
    #selects all columns except for the first 9 columns
    cols = -(RegionID:CountyName),
    names_to = "Days",
    values_to = "Prices"
  )

#view data
head(data_new_1[, 1:4],15)

#make the second dataset tidy
getwd()
library(tidyverse)
setwd("C:/Users/ADMIN/Documents/lab3")
data_origin_2 <-read.csv("Metro_zhvi_4bd.csv",header = TRUE, stringsAsFactors = FALSE)
glimpse(data_origin_2)
colnames(data_origin_2)<-sub("^X","",colnames(data_origin_2))
head(data_origin_1[, 1:10],10)

#Using pivot_longer to make the second dataset less large (include all date values in one column).

data_new_2 <- data_origin_2 %>%
  pivot_longer(
    #selects all columns except for the first 5 columns
    cols = -(RegionID:StateName),
    names_to = "Days",
    values_to = "Prices"
  )

#view data
head(data_new_1[, 1:4],15)

#two dataset now is almost tidy but not cleaned yet