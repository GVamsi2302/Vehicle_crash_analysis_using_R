library(tidyverse)
library(ggplot2)
library(readr)
library(dplyr)

#lodiing the dataset
mv_data<- read_csv("Dataset/Motor_Vehicle_Collisions_-_Crashes.csv")

#Exploring the dataset

# Explore the data structure
str(mv_data)

# View the first few rows of the data
head(mv_data)

# View the last few rows of the data
tail(mv_data)

#Explore the names of columns
colnames(mv_data) 

#Explore the zip code of dataset
unique(mv_data$`ZIP CODE`)

#Eplore the summary of dataset
summary(mv_data)

print(paste("Number of rows: ", nrow(mv_data))) #number of rows
print(paste("Number of columns: ", ncol(mv_data))) #number of columns 

#Changing the format of cloumn to date
mv_data$`CRASH DATE` <- as.Date(mv_data$`CRASH DATE`, "%m/%d/%Y")

# Calculate the number of accidents that occurred on each day of the week
data_of_week <- day(mv_data$`CRASH DATE`)
n_accidents_by_day_of_week <- table(data_of_week)

# Calculate the average number of people injured in each accident
summary(mv_data$`NUMBER OF PERSONS INJURED`)

#visualization 
barplot(n_accidents_by_day_of_week, main = "Number of accidents by day of the week")

plot(mv_data$`NUMBER OF PERSONS INJURED`,mv_data$`ZIP CODE`,main = "Relationship between number of injuries and zip code")













