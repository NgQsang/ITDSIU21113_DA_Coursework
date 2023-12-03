#script code and lap report by comment in Exercise 1

#click the Tools on the tool bars in Rstudio to install packages tidyverse
#or install.packages(tidyverse)

#find out the current directory.
getwd()

#call the library before using
library(tidyverse)

#set the directory to the folder containing the data
setwd("C:/Users/ADMIN/Documents/lab2")

#read csv file
data<-read.csv("Zip_zhvi_4bd.csv",header = TRUE, stringsAsFactors = FALSE)

#way to look at the data is to print it on your screen.
glimpse(data)

#remove the Metro
#because in the origin dataset the Metro is between the City and CountryName
#so, I'm remove the Metro first for easily set all the another col in to 1 sequence index
#"$" it's used to access the "Metro" column within the data data frame.
#assign a column the value NULL, it effectively removes that column from the data frame.
data$Metro<-NULL

#just keep the City and County Name
#so,remove the col 1 through 6

#the data[,-(1:6)]
#the part after the comma specifies the rows you want
#The minus sign - in front of (1:6) negates the values in the vector. 
#So, it becomes a vector of negative values, 
#which is used to specify the columns you want to remove
data_new<-data[,-(1:6)]

#using a regular expression pattern "^"
#the pattern means "match at the start of the string,
#and "X" is the character we are looking for to remove, so -> "^X"
#sub() function searches for a pattern within each element of the character vector
colnames(data_new)<-sub("^X","",colnames(data_new))

#view data
#display the first ten rows and columns of the dataset
head(data_new[, 1:10],10)