# Creating the results vector to 38 rounds
# Each result will be represented by its point value:
#  - 3 to victory
#  - 1 to draw
#  - 0 to lose
pointsByRound <- sample(x = 0:3, size = 38, replace = T, prob = c(0.2, 0.3, 0, 0.5))

# Creating the factor map
teamResults <- factor(x = pointsByRound, levels = c(0, 1, 3), labels = c('L', 'D', 'V'))

# Importing the ggplot2 package
library(ggplot2)

# Creating the histogram
qplot(teamResults)