#Experiment No. 3
#Abhishek Subhash Swami 21 AIML

#1. Create a function that will return the sum of 2 integers.

addition<-function(a,b){
  return (a+b)
}
addition(4,8)

#2. Create a function what will return TRUE if a given integer x is inside a vector v.
#Use function with arguments as v and x.

confirm<-function(v, x){
  return (x %in% v)
}
v=c(1,82,45,12,87,23,45,11)
x1=23
x2=99
confirm(v,x1)
confirm(v,x2)


#3. Create a function that given a vector v and an integer x will return how
#many times the integer appears inside the vector.

occurance<-function(v,x){
  return (sum(v==x))
}
v=c(1,87,45,12,87,23,45,87,42,45,23)
x=87
occurance(v,x)

#4. Create a function that given a vector will print by screen the mean and the
#standard deviation, it will optionally also print the median. Use default arguments

stats<-function(v, y){
  cat("Mean :",mean(v))
  cat("\nStandard Deviation :",sd(v))
  if (y==1){
    cat("\nMedian :",median(v))
  }
}
v=c(100,87,82,120,87,23,45,87,42,45,23)
y=readline("Want to calculate median ? put 1 or 0\n")
stats(v,y)

#5. Write recursive function for calculating factorial of a number and Fibonacci series

factorial<-function(number){
  if(number==0 | number==1){
    return (1)
  }
  else{
    return (number*factorial(number-1))
  }
}
number=5
print(factorial(number))
