# UFO Analysis

## Data Set

For this analysis, I am using the [scrubbed UFO sightings data set](https://www.kaggle.com/NUFORC/ufo-sightings) set from Kaggle. This data set uses a collection of descriptors of global UFO sightings over time, including the location of sighting, the shape of the UFO in question, and other variables. 

## Question

Is there any discernable pattern to the frequency of UFO sightings in the US by state? 

## Hypothesis

I predict that there will be a higher frequency of sightings in the central and southern US states. This is for several reasons: first, night sky visibility is better in rural areas, which would increase the likelihood of spotting a UFO. Second, certain areas (e.g. Texas and New Mexico) are known for famous sightings (e.g. Lubbock and Roswell, respectively) which may encourage UFO awareness in the region. 

## Analysis

For this project, I imported the data using the `scrubbed-import.R` and `states-import.R` scripts (the `states` data is from `map_data`, and includes the spatial data for each US State). Using the raw data, I used a series of methods to filter down to just US data in the `analysis.R` script. I then produced a map using `ggplot2` to show the total counts per state using the `figures.R` script.

*Dependencies for this analysis*:

* `tidyverse`
* `ggplot2`
* `ggmap`

## Visualization

I first created a frequency table with the number of sightings per state (regardless of when they occurred). Second, I generated a choropleth map to showcase the counts in each state.
