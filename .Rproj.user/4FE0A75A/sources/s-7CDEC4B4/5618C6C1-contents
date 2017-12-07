# Script to generate the map
library(ggplot2)

mapjoin1 <- read_csv("data/mapjoin.csv")

mapjoin1 <- mapjoin1 %>% 
  select(-X1)


map <- ggplot(map_data("state")) + 
  geom_polygon(data = mapjoin1, aes(x=long, y = lat, fill = count, group = name)) + 
  coord_fixed(1.3) +
  scale_fill_continuous(name = "Count", low = "blue", high = "red") +
  xlab("Longitude (°)") + 
  ylab("Latitude (°)") +
  ggtitle("UFO Sightings Per State")

ggsave("results/figures/ufo_sightings.png")