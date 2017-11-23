# Data analysis script

## Loading dependencies
library(tidyverse)
library(lubridate)


scrubbed <- read_csv("data/scrubbed.csv")

shapes <- scrubbed %>% 
  group_by(shape) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))


countries <- scrubbed %>% 
  group_by(country) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
