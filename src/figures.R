# Script to generate the Map

ggplot(map_data("state")) + 
  geom_polygon(data = test2, aes(x=long, y = lat, fill = count, group = name)) + 
  coord_fixed(1.3) +
  scale_fill_continuous(low = "blue", high = "red")