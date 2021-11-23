roll2 <- function(die = 1:6){
    dice <- sample(die, size = 2, replace = TRUE, prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
    sum(dice)
}

library(ggplot2)   #Import ggplot2 package to use qplot function
rolls <- replicate(10000, roll2())   #Runs the roll2 function 10000 times to obtain sufficient results
qplot(rolls, binwidth = 1)