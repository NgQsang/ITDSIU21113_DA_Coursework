#script code and lap report by comment in Exercise 4

#call the library before using
# dplyr is a popular package for data manipulation and transformation, 
#while lubridate is a package for working with dates and times
library(dplyr)
library(lubridate)

#mutate(): allows you to create new columns or 
#modify existing ones in a data frame.
#ymd() function parse the values in "Days" 
#as dates in the "ymd" (year-month-day) format.
#strftime() format these dates as character strings in the "dd/mm/yyyy" format. 
data_new_4 <- data_new_3 %>%
  mutate(Days = lubridate::ymd(Days), Days = strftime(Days, "%d/%m/%Y"))
# View the updated data
head(data_new_4[, 1:4],15)