#experiment9
#Abhishek Subhash Swami 21 AIML

#1) Download iris dataset from
#https://www.kaggle.com/datasets/arshid/iris-flower-dataset

#Subsetting and Aggregating

data<-read.csv("IRIS.csv")
data

#subsetting using Brackets by Selecting Rows and Columns
data[c(1:3),]
data[c(1:3),c(3:5)]

#Subset Using Brackets by Excluding Rows and Columns
data[-c(4:nrow(data)),]
data[-c(4:nrow(data)),-c(1:2)]

#Subset Using Brackets with which() Function
data[which(data$species=="Iris-setosa"&data$sepal_length>5.6),]
data[which(data$species=="Iris-setosa"&data$sepal_length>5.6),3:5]

#Subset Data with subset() Function
subset(data, species=="Iris-setosa"&sepal_length>5.6)
subset(data, species=="Iris-setosa"&sepal_length>5.6,3:5)

#Subset Data in Combination of select() and filter() Functions
library(dplyr)
filter(data, species=="Iris-virginica"&sepal_length>7.0)
select(filter(data, species=="Iris-virginica"&sepal_length>7.0),3:5)

#Subset a Random Sample with sample() Function
set.seed(123) # For reproducibility of same result
data[sample(1:nrow(data), 3, replace = FALSE),]
data[sample(1:nrow(data), 3, replace = FALSE),3:5]

#Aggregating
agg_mean = aggregate(data[,1:4],by=list(data$species),FUN=mean, na.rm=TRUE)
agg_mean

#Example for aggregate() function in R with sum: 
agg_sum = aggregate(data[,1:4],by=list(data$species),FUN=sum, na.rm=TRUE)
agg_sum

#Example for aggregate() function in R with count: 
agg_count = aggregate(data[,1:4],by=list(data$species),FUN=length)
agg_count

#Example for aggregate() function in R with maximum: 
agg_max = aggregate(data[,1:4],by=list(data$species),FUN=max, na.rm=TRUE)
agg_max

#Example for aggregate() function in R with minimum: 
agg_max = aggregate(data[,1:4],by=list(data$species),FUN=min, na.rm=TRUE)
agg_max
