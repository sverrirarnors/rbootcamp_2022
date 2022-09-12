
########## Examples to go with day 1 Presentation: Data Types ################


# Vectors and Scalars --------------------------------------------------------------

rm(list = ls())

# Vectors and Scalars (and some basic operations)

a <- 1
b <- c("1", 5, 9)
c <- c("Hello World", "Fun & R", "7635")
d <- c(2, 4, 7)

# Operations depend on content
d+b

d <- 2

# Logical (boolean) entries

l <- d > a 

l <- c(T, F, T)

sum(l)

# Classify objects

class(b)
class(a)
class(c)
class(l)



# Macrices and Arrays -----------------------------------------

# Matrices
m <- cbind(b, c)
class(m)
m

# Arrays
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),
                dimnames = list(row.names, column.names, matrix.names))

result


# Lists and Data Frames ---------------------------------------------------

df <- data.frame(m)
df
df$b

df$b
as.data.frame(m)$b


class(df)
str(df)

df$b <- as.numeric(df$b)
df$c <- as.character(df$c)
str(df)

l <- list(scalar = a, matrix = m, dataframe = df)
class(l)
str(l)


# Accessing Objects -------------------------------------------------------

# Lists
l$matrix

l$dataframe$b


df$b
l$matrix
b

# Vectors and Matrices
b[3]

l[2]

df
df[1]

m[1, 2]

df$b[3, 1]

# [] operator also works for lists
l[[2]][1, 2]



# Functions ---------------------------------------------------------------


?rnorm # Identify required arguments

rnorm(n = 19, mean = 4, sd = 19)


rnorm(n = 10)
rnorm(10)

rand_n <- rnorm(n = 100)
rand_t <- rt(n = 100, df = 11)

rand_data <- data.frame(rand_n, rand_t)

head(rand_data)
?head
head(rand_data, n = 15)

# Example: Two-sample t-test

?t.test

test_rand <- t.test(x = rand_data$rand_n, y = rand_data$rand_t, 
                    alternative = "two.sided", var.equal = FALSE, 
                    mu = 0, conf.level = 0.95)


class(test_rand)

test_rand$p.value

test_rand$alternative
test_rand$statistic

test_rand

# Functions from packages

library(questionr)
describe(rand_data)

questionr::describe(rand_data)

