## Import raw scrubbed data

## Siobhan McCarter, Dec 2017
# What it does: This script loads in the csv files from scrubbed-import.R and states-import.R, and then performs an
              # analysis by cleaning and summarising the data.

# Usage: run through R Studio

# Loading dependencies
library(tidyverse)
library(ggmap)
library(readr)

args <- commandArgs(TRUE)

# Read in the data
states1 <- read_csv(args[1]) # arg1
scrubbed1 <- read_csv(args[2]) #arg2

scrubbed1 <- scrubbed1 %>% 
  select(-X1)

# filter to just the US
us <- scrubbed1 %>% 
  filter(country == "us")

# checking the count of sightings per state
usstate <- us %>%  
  group_by(state) %>% 
  summarise(count = n())

# do some data cleaning 
states1$State <- str_to_lower(states1$State)
states1$Abbreviation <- str_to_lower(states1$Abbreviation)
states1 <- states1 %>% 
  select(State, Abbreviation)
colnames(states1) <- c("name", "state")

# join the two tables
statejoin <- full_join(usstate, states1)

# import the map data
mapstate <- map_data("state")
colnames(mapstate) <- c("long", "lat", "group", "order", "name", "subregion")

# join map data with summary data
mapjoin <- left_join(mapstate, statejoin)

# write an export file to be run through the figures.R script
write_csv(mapjoin, args[3]) #arg3 data/mapjoin.csv




