# Data analysis script

# filter to just the US
us <- scrubbed %>% 
  filter(country == "us")

# checking the count of sightings per state
usstate <- us %>%  
  group_by(state) %>% 
  summarise(count = n())
