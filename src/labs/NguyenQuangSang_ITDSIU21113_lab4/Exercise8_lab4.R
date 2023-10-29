#script code and lap report by comment in Exercise 8
#first of all , we need to download the flextable package
#click the tools on the tool bar, select install package, find the flextabe

#group your data by RegionType and calculate the mean,median,std for each group
#save the above results into an object named regiontype.summary
regiontype.summary <- data_metro_zip %>%
  group_by(RegionType) %>%
  summarize(
    Average_Price = mean(price, na.rm = TRUE),
    Median_Price = median(price, na.rm = TRUE),
    Std_Price = sd(price, na.rm = TRUE)
  )

#print the result
print(regiontype.summary)

#input the object into the function flextable(). Save it into an object called my_table
library(flextable)
my_table <- flextable(regiontype.summary)

#save the table as a .png file
save_as_image(my_table, path = "my_table.png", type = "png")