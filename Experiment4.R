#Experiment No. 4
#Abhishek Subhash Swami 21 AIML

#1 Construct a matrix B. Show that BxBxB is scalar multiple of the identity matrix
#and find the scalar.
data<-c(1,4,-3,2,2,-1,3,6,-3)
B<-matrix(data,nrow=3,ncol = 3)
B
#calculate BxBxB
B3<-B%*%B%*%B
B3

#To show it is scalar multiple of identity matrix
identical(B3,diag(3)* -6)

#identity matrix
diag(3)

#2 Construct following matrix and perform 
#a)1:8

m<-matrix(1:8, nrow = 2,ncol = 4)
m

#b) Calculate Transpose.
transpose<-t(m)
transpose

#c) Calculate Inverse.
print("matrix must be square matrix")

#d) Calculate Multiplication of the matrix.
mul<-m*m
mul

#e) construct a matrix with 10 columns and 10 rows, all filled with random
#numbers between 0 and 100.
r<-matrix(sample.int(100,100),nrow = 10, ncol = 10)
r

#f) Calculate the row means of this matrix (Hint: use row Means). Also calculate the
#standard deviation across the row means (now also use sd().
rowMeans(r)
sd(rowMeans(r))

#g) Now remake the above matrix with 100 columns, and 10 rows. Then calculate the
#column means (using, of course, col Means).
r2<-matrix(sample.int(100,100),nrow = 100, ncol = 10)
r2
colMeans(r2)


#3) Scalar multiplication. Find the solution for A where a=3 and A is the same
#as in the previous question.
data<-c(1,4,-3,2,2,-1,3,6,-3)
A<-matrix(data,nrow=3,ncol = 3)
a=3
a*A

#4)Find the value of x on Ax=b.
B<-matrix(c(26,34,64))
inv<-solve(A)
x<-inv%*%B
x
#or
solve(A,B)

#5)Using the function eigen find the eigenvalue for A.
print(eigen(A))

#6)Find the eigenvalues and eigenvectors of A’A . Hint: Use crossprod to compute A’A .
 
eigen(crossprod(A))$values
eigen(crossprod(A))$vectors

#Arrays


#1.Write a R program to create an array of two 3x3 matrices each with 3 rows 
#and 3 columns from two given two vectors

vector1 <- c(1, 2, 3)
vector2 <- c(10, 15, 3, 11, 16, 12)
array1<-array(c(vector1,vector2),dim = c(3,3))
array1

#2.Write a R program to create an array of two 3x3 matrices each with 3 rows 
#and 3 columns from two given two vectors. Print the second row of the second 
#matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
vector1 <- c(1, 2, 3)
vector2 <- c(10, 15, 3, 11, 16, 12)
array1<-array(c(vector1,vector2),dim = c(3,3,2))
array1[2,,2]
array1[3,3,1]

#3. Write a R program to create a two-dimensional 5x3 array of sequence of even
#integers greater than 50.
array2<-array(sequence(15,50,2),dim=c(5,3))
array2

#4. Write a R program to add, multiply two 3D arrays

array3<-array(c(1:12),dim = c(2,2,3))
array3
array4<-array(c(13:24),dim=c(2,2,3))
array4
#Add two arrays
array3+array4
#multiply two arrays
array3*array4
