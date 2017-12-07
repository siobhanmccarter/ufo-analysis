## Loading dependencies

library(tidyverse)

# Importing the data
scrubbed <- read_csv("https://raw.githubusercontent.com/siobhanmccarter/ufo-analysis/master/data/scrubbed.csv")
write.csv(scrubbed, file = "data/scrubbed1.csv")
