library(dplyr)

#script code and lap report by comment in Exercise 6

#use the group_by function to group by both RegionType and StateName
#use the summarize function to count the occurrences
proportion_observations  <- data_metro_zip %>%
  group_by(RegionType, StateName) %>%
  summarize(Count = n()) %>%
  mutate(Proportion = Count / sum(Count))

#print the result
print(proportion_observations)