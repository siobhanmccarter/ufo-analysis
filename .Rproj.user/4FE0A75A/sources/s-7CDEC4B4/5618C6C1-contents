## Script to generate the map

## Siobhan McCarter, Dec 2017
# What it does: This script loads in the csv file from analysis.R and creates a choropleth map showing counts of UFO 
                # sightings per state.

# Usage: run through R Studio

# Loading dependencies
library(ggplot2)

# read in csv
mapjoin1 <- read_csv("data/mapjoin.csv")

# clean the csv
mapjoin1 <- mapjoin1 %>% 
  select(-X1)

# create the map
map <- ggplot(map_data("state")) + 
  geom_polygon(data = mapjoin1, aes(x=long, y = lat, fill = count, group = name)) + 
  coord_fixed(1.3) +
  scale_fill_continuous(name = "Count", low = "blue", high = "red") +
  xlab("Longitude (°)") + 
  ylab("Latitude (°)") +
  ggtitle("UFO Sightings Per State")


# save the png
ggsave("results/figures/ufo_sightings.png")