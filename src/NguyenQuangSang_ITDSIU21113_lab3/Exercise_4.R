#script code and lap report by comment in Exercise 4

#to avoid having two dataframes with the same variable names:
#rename one or both of the dataframes' columns before performing the join. By doing this, the merged dataframe's column names are assured to be unique.
#use a spacer to join two columns.

data_metro_zip <- data_metro_zip %>%
  mutate(SizeRank = coalesce(SizeRank.x, SizeRank.y))
data_metro_zip <- data_metro_zip %>%
  mutate(RegionName = coalesce(RegionName.x, RegionName.y))
data_metro_zip <- data_metro_zip %>%
  mutate(RegionType = coalesce(RegionType.x, RegionType.y))
data_metro_zip <- data_metro_zip %>%
  mutate(StateName = coalesce(StateName.x, StateName.y))
data_metro_zip <- data_metro_zip %>%
  mutate(date = coalesce(Days.x, Days.y))
data_metro_zip <- data_metro_zip %>%
  mutate(price = coalesce(Prices.x, Prices.y))
head(data_metro_zip, n = 10)

data_metro_zip_new <- subset(data_metro_zip, select = -c(SizeRank.x, SizeRank.y,RegionName.x, RegionName.y,RegionType.x, RegionType.y,StateName.x, StateName.y,Days.x, Days.y,Prices.x, Prices.y))
head(data_metro_zip_new, n = 10)