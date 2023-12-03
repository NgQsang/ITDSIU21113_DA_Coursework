#script code and lap report by comment in Exercise 3

#merge the two datasets together
#match on the variables RegionID and RegionID and 
#save the merged data set into a new object called data_metro_zip

#just using the merge() function
data_metro_zip <- merge(data_new_pivot1, data_new_pivot2, by.x = "RegionID", by.y = "RegionID", all = TRUE)
head(data_metro_zip, n = 10)
view(data_metro_zip)
data_metro_zip$RegionName.y <- as.integer(data_metro_zip$RegionName.y)
glimpse(data_metro_zip)