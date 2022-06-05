#experiment5
#Abhishek Subhash Swami 21 AIML


#1) If: p <- c(2,7,8), q <- c("A", "B", "C") and x <- list(p, q), then what is the value of x[2]?

p <- c(2,7,8)
q <- c("A", "B", "C")
x <- list(p, q)
x[2]

#2)If: w <- c(2, 7, 8) v <- c("A", "B", "C") x <- list(w, v), then which R statement will replace "A" in x with "K".

w <- c(2, 7, 8)
v <- c("A", "B", "C")
x <- list(w, v)

x[[2]][1] <- "K"
x

#3)If a <- list ("x"=5, "y"=10, "z"=15), which R statement will give the sum of all elements in a?

a <- list ("x"=5, "y"=10, "z"=15)
sum(unlist(a))

#4)If New list <- list(a=1:10, b="Good morning", c="Hi"), write an R statement that will add 1 to each element of the first vector in New list.

Newlist <- list(a=1:10, b="Good morning", c="Hi")
Newlist$a = Newlist$a +1
Newlist$a

#5)If b <- list(a=1:10, c="Hello", d="AA"), write an R expression that will give all elements, except the second, of the first vector of b.
b <- list(a=1:10, c="Hello", d="AA")
b$a[-2]

#6)Let x <- list(a=5:10, c="Hello", d="AA"), write an R statement to add a new item z = "New Item" to the list x.

x <- list(a=5:10, c="Hello", d="AA")
x$z <- "NewItem"
x
#7) write an R statement that will assign new names "one", "two" and "three" to the elements of y.

y <- list("a", "b", "c")
names(y) <- c("one","two","three")
y

#8) write an R statement that will give the length of vector r of x.
#x <- list(y=1:10, t="Hello", f="TT", r=5:20)

x <- list(y=1:10, t="Hello", f="TT", r=5:20)
length(x$r)

#9)Let string <- "Grand Opening", write an R statement to split this string into two and return the output:

string <- "Grand Opening"
string.splitted <- strsplit(string," ")
string.splitted
#or
mylist <- list(string.splitted[[1]][1], string.splitted[[1]][2])
mylist

#Q.10 Let: y <- list ("a", "b", "c") and q <- list ("A", "B", "C", "a", "b", "c").
#Write an R statement that will return all elements of q that are not in y.

y <- list ("a", "b", "c")
q <- list ("A", "B", "C", "a", "b", "c")
setdiff(q,y)
