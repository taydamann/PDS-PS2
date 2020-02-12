###TAYLOR J. DAMANN###
#### PDS PS2 #####


#1
#In a for loop, we put in an argument that tells it how long to loop. I set this
#to loop from 1 to 7. Following the curly brackets, a for loop needs to know what
#to do, so I instruct it to print the cube of each number that it iterates over. 
for(i in 1:7){
  print(i^3)
}

#2
#I set the seed at 14 first so that my answers are the same as the rest of my
#classmates' answers. Then, I ask the for loop to iterate from 1 to 1000 because
#the question asks for 1000 simulations. Each iteration will be a single simulation.
#Telling the for loop what to do, I ask it to sample two numbers with replacement
#from 1 to 6, the numbers on the faces of dice. Now I add some conditional statements.
#If the two numbers sum to between 8 and 12 inclusively, the game ends. I make an if
#statement to do this, asking for the sum of each specific iteration. If the sum is
#between 8 and 12, the function breaks and prints out the values. If not, the iterations
#continue until a 2 or a 6 is rolled or there have been 1000 iterations. 
set.seed(14)
totalRoll <- NULL
rolls <- NULL
for(i in 1:1000){
  x[i] <- sample(1:6, 1)
  y[i] <- sample(1:6, 1)
  rolls <- c(rolls, x[i], y[i])
  firstSum <- x[1]+y[1]
  totalRoll <- c(totalRoll, x[i]+y[i])
  if (firstSum == 8 | firstSum == 9 | firstSum == 10 | firstSum == 11 | firstSum == 12) {
    print("Sum of first roll was between 8 and 12")
    break
  } else if (x[i] == 2 | x[i] == 6 | y[i] == 2 | y[i] == 6) {
    print("One roll equaled 2 or 6")
    print(paste("The average number of dice casts per game is", mean(totalRoll)))
    print(c(rolls))
    break
  }
}

#3
#First, I load in the dataset using the readr package. This package is useful for letting R figure out
#how to deal with what data you are reading in. I call this GSS_data and use the View function
#to pull up the data in a new window. 
library(readr)
GSS_data <- read_csv("http://politicaldatascience.com/PDS/Problem%20Sets/Problem%20Set%202/GSS-data.csv")
View(GSS_data)

library(plyr)
count(GSS_data, 'pres16')

vote.choice <- function(candidate) {
  if(candidate == "Clinton") {
    countClinton <- length(which(GSS_data$pres16 == "Clinton"))
    print(countClinton)
  } else if(candidate == "Trump") {
    countTrump <- length(which(GSS_data$pres16 == "Trump"))
    print(countTrump)
  } else if(candidate == "Other") {
    countOther <- length(GSS_data$pres16) - (577+764)
    print(countOther)
  } else
    print("Please enter either 'Trump' 'Clinton' or 'Other' into the function to return a valid response.")
}
vote.choice("Trump")
vote.choice("Clinton")
vote.choice("Other")

