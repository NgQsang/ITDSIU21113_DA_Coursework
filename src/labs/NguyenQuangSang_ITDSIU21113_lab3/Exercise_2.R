#script code and lap report by comment in Exercise 2

#Ex2) Before merge two datasets together let’s find and check if there are the 
#common RegionID or StateName in the two datasets.

#using the intersect() function to check the common value
commonID <- intersect(data_origin_1$RegionID, data_origin_2$RegionID)
#=> there is no common from the RegionID of both datasets

commonState <- intersect(data_origin_1$StateName, data_origin_2$StateName)
#=> there are around 50 commons StateName in the 2 datasets