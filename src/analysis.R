# Data analysis script

# Load dependencies
library(ggmap)

# Read in the data
states1 <- read_csv("data/states1.csv")
scrubbed1 <- read_csv("data/scrubbed1.csv")

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

scrubbed1 <- scrubbed1 %>% 
  select(-X1)

# import the map data
mapstate <- map_data("state")
colnames(mapstate) <- c("long", "lat", "group", "order", "name", "subregion")

mapjoin <- left_join(mapstate, statejoin)

write.csv(mapjoin, file = "data/mapjoin.csv")




