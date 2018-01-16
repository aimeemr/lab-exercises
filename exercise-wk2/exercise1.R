## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# When the sum function is called, the variable, my.vector is inputed, which contains
# a number along with initals which is a charcter type which is incompatible with the 
# function type.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# When calling to print the length of variable my.line, the prefix "str_"
# causes the function to be unrecognizable by the computer. In order to print the 
# length of the given string you must delete the prefix.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The vairable name "inital" is inconsistent with the original vairable name of "initials"


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
v1 <- c(1, 2, 3)
typeof(v1)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2){
  difference <- length(v1) - length(v2)
  difference <- abs(difference)
  
  string <- paste("The difference in length is", difference)
  return(string)
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1, 2, 3)
v2 <- c(4)
CompareLength(v1, v2)
# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2){
  longest.vector = length(v1) - length(v2)
  if(longest.vector > 0){
    result <- paste('Your first vector is longer by', longest.vector, 'elements')
  } 
  if(length(v1) < length(v2){
    result <- paste('Your second vector is longer by', longest.vector, 'elements')
  }
  
  return(result)
}
# Pass two vectors to your `DescribeDifference` function
v3 <- c(1, 2, 3, 4, 5)
v4 <- c(4, 5, 6, 6, 7, 8, 9)
DescribeDifference(v3, v4)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

CombineVectors <- function(v1, v2, v3) {
  return(c(v1, v2, v3))
  
}
# Send 3 vectors to your function to test it.
CombineVectors(v1, v2, v3)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

CapsTime <- function(courses){
  return(gsub"[A-Z"], "", courses)
  
}
