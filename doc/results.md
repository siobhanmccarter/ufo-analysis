---
title: "UFO Sightings Analysis"
output: github_document
fig_width: 6 
fig_height: 4
---




```
## Error in open.connection(con, "rb"): HTTP error 404.
```

```
## Error in eval(lhs, parent, parent): object 'mapjoin2' not found
```


## Hypothesis

I predict that there will be a higher frequency of sightings in the central and southern US states. This is for several reasons: first, night sky visibility is better in rural areas, which would increase the likelihood of spotting a UFO. Second, certain areas (e.g. Texas and New Mexico) are known for famous sightings (Lubbock and Roswell, respectively), which may encourage UFO awareness in the region.

## Analysis

The first step was to load in the raw `scrubbed` dataset, as well as the `states` dataset from `maps_data`. 


```r
head(scrubbed)
```

```
## # A tibble: 6 x 11
##           datetime                 city state country    shape
##              <chr>                <chr> <chr>   <chr>    <chr>
## 1 10/10/1949 20:30           san marcos    tx      us cylinder
## 2 10/10/1949 21:00         lackland afb    tx    <NA>    light
## 3 10/10/1955 17:00 chester (uk/england)  <NA>      gb   circle
## 4 10/10/1956 21:00                 edna    tx      us   circle
## 5 10/10/1960 20:00              kaneohe    hi      us    light
## 6 10/10/1961 19:00              bristol    tn      us   sphere
## # ... with 6 more variables: `duration (seconds)` <int>, `duration
## #   (hours/min)` <chr>, comments <chr>, `date posted` <chr>,
## #   latitude <dbl>, longitude <dbl>
```

```r
head(states)
```

```
## # A tibble: 6 x 2
##        State Abbreviation
##        <chr>        <chr>
## 1    Alabama           AL
## 2     Alaska           AK
## 3    Arizona           AZ
## 4   Arkansas           AR
## 5 California           CA
## 6   Colorado           CO
```

From the scrubbed data, I filtered to include only the sightings in the US. From this, I then found the frequency of sightings, as grouped by state:


```r
usstate %>% arrange(desc(count))
```

```
## # A tibble: 52 x 2
##    state count
##    <chr> <int>
##  1    ca  8912
##  2    wa  3966
##  3    fl  3835
##  4    tx  3447
##  5    ny  2980
##  6    il  2499
##  7    az  2414
##  8    pa  2366
##  9    oh  2275
## 10    mi  1836
## # ... with 42 more rows
```

I then joined this table with the `state` location data in order to produce a map showing the frequency of sightings per state:


```r
head(mapjoin2)
```

```
## Error in head(mapjoin2): object 'mapjoin2' not found
```


## Results

![UFO sightings per state](https://raw.githubusercontent.com/siobhanmccarter/ufo-analysis/master/results/figures/ufo_sightings.png)

## Conclusion and Summary

By far, California has the highest number of sightings. There does not appear to be an obvious geospatial connection between the frequency of sightings. It is worth noting that the midwest states have lower counts, while the southern and Pacific states have higher counts. Future studies of this data could incorportate methods such as measuring relative frequency of UFO sightings instead of solely using count per state. This would account for more densely-populated states reporting higher frequencies of UFO sightings based solely on there being more people residing in the state. Further analysis is necessary to draw any meaningful conclusions. 







