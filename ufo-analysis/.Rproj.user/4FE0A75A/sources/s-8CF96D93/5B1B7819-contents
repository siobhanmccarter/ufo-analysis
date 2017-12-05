# Data analysis script

## Loading dependencies

library(tidyverse)
library(lubridate)
library(ggmap)


scrubbed <- read_csv("data/scrubbed.csv")

# checking the count of sightings per state
usstate <- scrubbed %>%
  filter(country == "us") %>% 
  group_by(state) %>% 
  summarise(count = n())

map_data("state")
