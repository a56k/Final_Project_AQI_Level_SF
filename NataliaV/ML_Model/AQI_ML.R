library(dplyr)

## 
AQI_dataframe <- read.csv(file = 'AQI_Data_2015.csv', check.names = F, stringsAsFactors = F)
#perform multiple linear regression
lm(AQI_Max ~ AQI_CO + AQI_NO2 + AQI_O3 + AQI_PM_2_5 + AQI_PM_10,data=AQI_dataframe)
summary(lm(AQI_Max ~ AQI_CO + AQI_NO2 + AQI_O3 + AQI_PM_2_5 + AQI_PM_10,data=AQI_dataframe))
