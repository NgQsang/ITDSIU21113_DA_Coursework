#script code and lap report by comment in Exercise 5

#Let’s next summarize a single categorical variable RegionType indicates whether a house belongs 
#to which region levels zip/country/msa. The variable has three categories: zip, country and msa.

#use the summary function to summarize the categorical variable
summary_region_type <- summary(data_metro_zip$RegionType)

#print the summary
print(summary_region_type)

library(dplyr)

#use the group_by function to group by RegionType
#use the summarize function to count the occurrences of each RegionType
percent_regiontype <- data_metro_zip %>%
  group_by(RegionType) %>%
  summarize(Count = n()) %>%
  mutate(Percent = (Count / sum(Count)) * 100)

#print the result
print(percent_regiontype)