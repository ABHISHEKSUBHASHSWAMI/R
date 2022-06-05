#Experiment 2
#Abhishek Subhash Swami 21 AIML
#Consider two vectors, x, y x<-c(4,6,5,7,10,9,4,15) y<-c(0,10,1,8,2,3,4,1)
#What is the value of: x*y and x+y
#solution
x<-c(4,6,5,7,10,9,4,15)
y<-c(0,10,1,8,2,3,4,1)
x*y
x+y

#2.Consider two vectors, a, b a<-c(1,5,4,3,6) b<-c(3,5,2,1,9)
#What is the value of :a<<-b : 
#solution
a<-c(1,5,4,3,6)
b<-c(3,5,2,1,9)
a<-b

#3. If x<-c(1:12)
#What is the value of: dim(x) What is the value of: length(x)
#solution
x<-c(1:12)
x
dim(x)

#4. If a<-c(12:5)
#What is the value of: is.numeric
#solution
a<-c(12:5)
is.numeric(a)

#5. If x<-c ('blue', 'red', 'green', 'yellow') what is the value of: is.character(x).
#If x<-c('blue',10,'green',20) What is the value of: is.character(x).
#solution
x<-c('blue', 'red', 'green', 'yellow')
is.character(x)
x<-c('blue',10,'green',20)
is.character(x)

#6.Consider two vectors, a, b a<-c(10,2,4,15) b<-c(3,12,4,11)
#What is the value of: rbind(a,b) and cbind(a,b )
#solution
a<-c(10,2,4,15)
b<-c(3,12,4,11)
rbind(a,b)
cbind(a,b )

#7.The numbers below are the first ten days of rainfall amounts in 1996.
#Read them into a vector using the c() function 0.1, 0.6, 33.8, 1.9, 9.6, 4.3, 33.7, 0.3, 0.0, 0.1
#solution
rainfall<-c(0.1, 0.6, 33.8, 1.9, 9.6, 4.3, 33.7, 0.3, 0.0, 0.1)
rainfall

#8.Inspect Table and answer the following questions:
#i. What was the mean rainfall, how about the standard deviation?
#ii. Calculate the cumulative rainfall (’running total’) over these ten days. 
#Confirm that the last value of the vector that is equal to the total sum of the rainfall.
#iii. Which day saw the highest rainfall?
mean(rainfall)
sd(rainfall)
cumsum(rainfall)
setequal(tail(rainfall,1),sum(rainfall))
max(rainfall)


#9. Write R Program to do following operation on two vectors
# Addition,subtraction,division,multiplication

v1<-c(1,11,21,31,41)
v2<-c(12,22,32,42,52)
sum(v1,v2)
v2-v1
v2/v1
v1*v2

#10. Write R Program to find mean, mode, median
mean(v1)
mode(v1)
median(v1)


#11.Sort the vector in ascending and descending order
data <- c(11, 21, 19, 18, 46)
sort(data, decreasing = TRUE) #descending
sort(data, decreasing = FALSE) #ascending


#12.Create a vector x=(20,30,20,40,40,50) .count frequency of 20
x=c(20,30,20,40,40,50)
print(sum(x==20))


#13. Find largest and second largest number in vector
data <- c(11, 21, 19, 18, 46)
sort(data, decreasing=TRUE)[1:2]

#14.The weights of five people before and after a diet program are given in the table.
#Read the `before' and `after' values into two different vectors called before and after.
#Use R to evaluate the amount of weight lost for each participant.
#What is the average amount of weight lost?

before<-c(78,72,78,79,105)
after<-c(67,65,79,70,93)
lost<-before-after
lost
mean(lost)

#15.The numbers below are the first ten days of rainfall amounts in 1996.
#Read them in to a vector using the c() function 
#0.1, 0.6, 33.8, 1.9, 9.6, 4.3, 33.7, 0.3, 0.0, 0.1
#i. What was the mean rainfall, how about the standard deviation?
#ii. Calculate the cumulative rainfall (’running total’) over these ten days.
#Confirm that the last value of the vector that is equal to the total sum of the rainfall.
#iii. Which day saw the highest rainfall?

rain<-c(0.1, 0.6, 33.8, 1.9, 9.6, 4.3, 33.7, 0.3, 0.0, 0.1)
mean(rain) #mean rainfall
sd(rain) #standard Deviation
cumsum(rain)
sum(rain)==cumsum(rain)[length(rain)] #confirmation
day<-which(rain==max(rain))
cat("Day",day,"experienced highest rainfall.")
