#experiment6
#Abhishek Subhash Swami 21 AIML

#Question 1
#Create the following data frame, afterwards invert gender(use factors) for all individuals.
Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75, 70, 83, 53)
Gender <- as.factor(c("F", "F", "M", "M", "F", "M", "F"))
df <- data.frame (row.names = Name, Age, Height, Weight, Gender)

levels(df$Gender)


#Question 2
#Create this data frame (make sure you import the variable working as character 
#and not factor).Add this data frame column-wise to the previous one.
#a) How many rows and columns does the new data frame have? 
#b) What class of data is in each column?
Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Working <- c("Yes","No","No","Yes","Yes","No","Yes")
df2 <- data.frame(row.names = Name,Working) #Name has been already defined in exercise 1.
df2

#a
df <- cbind(df,df2)
dim(df)
#b
str(df)
class(state.center)
data.state <- as.data.frame(state.center)

#Question 3
#Create a simple data frame from 3 vectors. Order the entire data frame by the first column.

a <- (rnorm(10))
b <- letters[5:14]
c <- c("yes","no","no","no","no","yes","no","yes","yes","no")
df3 <- data.frame(a,b,c)
df3[with (df3, order(a)),]

#Question 4
#Create a data frame from a matrix of your choice, change the row names so every
#row says id_i (where i is the row number) and change the column names to
#variable_i (where i is the column number). I.e.,
#for column 1 it will say variable_1, and for row 2 will say id_2 and so on.

mat<- matrix(1:40, nrow = 10, ncol = 4)
df <- as.data.frame(mat)
colnames(df) <- paste("variable_", 1:ncol(df))
rownames(df) <- paste("id_", 1:nrow(df))
df

#Question -5
#(a) Create a small data frame representing a database of films. It should contain the fields title, director, year, country, and at least three films.
#(b) Create a second data frame of the same format as above, but containing just one new film. 
#(c) Merge the two data frames using rbind().
#(d) Try sorting the titles using sort(): whathappens?


film1<-c("Dr. Strange","Sam Raimi","2022","USA")
film2<-c("TENET","Christopher Nolan","2020","UK")
film3<-c("Avengers:Infinity War","Russo Brothers","2018","USA")
film4<-c("Thor","Taika Waititi","2022","USA")

filmdata1<-data.frame(rbind(film1,film2,film3))
filmdata1

filmdata2<-data.frame(rbind(film4))
filmdata2

new<-rbind(filmdata1,filmdata2)
colnames(new) <- paste(c("Title","Director","Year","Country"))
new

s<-sort(new$Title)
s


#Factors

#1. If x = c(1, 2, 3, 3, 5, 3, 2, 4, NA), what are the levels of factor(x)?

x = c(1, 2, 3, 3, 5, 3, 2, 4, NA)
factor(x)

#2. Let x <- c(11, 22, 47, 47, 11, 47, 11). If an R expression
#factor(x, levels=c(11, 22, 47)#ordered=TRUE) is executed,
#what will be the 4th element in the output?
x <- c(11, 22, 47, 47, 11, 47, 11)
factor(x, levels=c(11, 22, 47),ordered=TRUE)

#3. If z<-factor(c("p","q","p","r","q"))and levels of z are"p","q","r",
#write an R expression that
#will change the level "p" to "w" so that z is 
#equal to: "w", "q" , "w", "r" , "q".(use level)

z<-factor(c("p","q","p","r","q"))
levels(z)[1] <- "w"
z


#4. If: s1 <- factor(sample(letters, size=5, replace=TRUE)) and 
#s2 <- factor(sample(letters, size=5, replace=TRUE)),
#write an R expression that will concatenate s1 and s2 in a single factor with 10
#elements

s1 <- factor(sample(letters, size=5, replace=TRUE))
s2 <- factor(sample(letters, size=5, replace=TRUE))
factor(c(levels(s1)[s1], levels(s2)[s2]))


