#Script code and lap report by comment in Exercise 6-Lab5

#Calculate the correlation between price and lotAreaValue
correlation <- cor(df_new$price, df_new$lotAreaValue, use = "complete.obs")

#Print the correlation value
print(correlation)

#So, the correlation is 0.1731126
#The correlation coefficient is close to 1
#So, A correlation coefficient of approximately 0.173 suggests a weak positive linear relationship between the price and lotAreaValue variables in dataset.