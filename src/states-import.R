## Loading dependencies

library(tidyverse)

# Importing the data

states <- read_csv("https://raw.githubusercontent.com/siobhanmccarter/ufo-analysis/master/data/states.csv")
write.csv(states, file = "data/states1.csv")
