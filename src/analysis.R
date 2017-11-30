# Data analysis script

## Loading dependencies
library(tidyverse)
library(lubridate)


scrubbed <- read_csv("data/scrubbed.csv")

countries <- scrubbed %>% 
  group_by(country) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
