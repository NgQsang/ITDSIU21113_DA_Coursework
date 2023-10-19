#script code and lap report by comment in Exercise 3

#first of all, I'm remove one in two col "State Name" and "State"
#here I'm will remove the "State Name"

#using the same technique used to remove "Metro" in the Exercise1

#view the origin data before prefix X and remove "Metro" in the exercise1
View(data)

#now, we remove the "State"
data$StateName<-NULL

#using the same technique used to remove the prefix X in the Exercise1
data_new_2<-data[,-(1:5)]
colnames(data_new_2)<-sub("^X","",colnames(data_new_2))
head(data_new_2[, 1:10],10)

#Because the requirement of question number 3 
#does not clearly state whether to keep the City and County Name columns or not. 
#And depending on which segment you apply this data set to analyze and find insight into, 
#you can decide whether the data of the remaining 5 columns is worth keeping or not.
#Here I will continue to keep the same as sentence 1
#Next I will use pivot_longer to make the data set less large (include all date values in one column).

data_new_3 <- data_new_2 %>%
  pivot_longer(
    # Pivot every column except the first 2 columns
    cols = -c(City, CountyName),
    # Name of the new column which contains the names of the columns to be "gathered"
    names_to = "Days",
    # Name of the new column which contains the values of the cells which now form a new column
    values_to = "Prices"
  ) %>%
  # Optional reordering of columns
  select(City, CountyName, Days, Prices)

#view data
View(data_new_3)
head(data_new_3[, 1:4],15)