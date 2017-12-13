## Import raw scrubbed data

## Siobhan McCarter, Dec 2017
# What it does: This script loads in the raw UFO sightings data

# Usage: run through R Studio

# Loading dependencies

library(tidyverse)
library(readr)

# Importing the data
args <- commandArgs(TRUE)
scrubbed <- read_csv("https://raw.githubusercontent.com/siobhanmccarter/ufo-analysis/master/data/scrubbed.csv")
write_csv(scrubbed, args[1])
