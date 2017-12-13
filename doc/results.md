UFO Analysis Report
================
Siobhan McCarter
December 2017

Hypothesis
----------

I predict that there will be a higher frequency of sightings in the central and southern US states. This is for several reasons: first, night sky visibility is better in rural areas, which would increase the likelihood of spotting a UFO. Second, certain areas (e.g. Texas and New Mexico) are known for famous sightings (Lubbock and Roswell, respectively), which may encourage UFO awareness in the region.

Analysis
--------

The first step was to load in the raw `scrubbed` dataset, as well as the `states` dataset from `maps_data`.

| datetime         | city                 | state | country | shape    |  duration (seconds)| duration (hours/min) | comments                                                                                                                                            | date posted |  latitude|    longitude|
|:-----------------|:---------------------|:------|:--------|:---------|-------------------:|:---------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------|:------------|---------:|------------:|
| 10/10/1949 20:30 | san marcos           | tx    | us      | cylinder |                2700| 45 minutes           | This event took place in early fall around 1949-50. It occurred after a Boy Scout meeting in the Baptist Church. The Baptist Church sit             | 4/27/2004   |  29.88306|   -97.941111|
| 10/10/1949 21:00 | lackland afb         | tx    | NA      | light    |                7200| 1-2 hrs              | 1949 Lackland AFB&\#44 TX. Lights racing across the sky & making 90 degree turns on a dime.                                                         | 12/16/2005  |  29.38421|   -98.581082|
| 10/10/1955 17:00 | chester (uk/england) | NA    | gb      | circle   |                  20| 20 seconds           | Green/Orange circular disc over Chester&\#44 England                                                                                                | 1/21/2008   |  53.20000|    -2.916667|
| 10/10/1956 21:00 | edna                 | tx    | us      | circle   |                  20| 1/2 hour             | My older brother and twin sister were leaving the only Edna theater at about 9 PM&\#44...we had our bikes and I took a different route home         | 1/17/2004   |  28.97833|   -96.645833|
| 10/10/1960 20:00 | kaneohe              | hi    | us      | light    |                 900| 15 minutes           | AS a Marine 1st Lt. flying an FJ4B fighter/attack aircraft on a solo night exercise&\#44 I was at 50&\#44000&\#39 in a "clean" aircraft (no ordinan | 1/22/2004   |  21.41806|  -157.803611|

| State                | Abbreviation |
|:---------------------|:-------------|
| Alabama              | AL           |
| Alaska               | AK           |
| Arizona              | AZ           |
| Arkansas             | AR           |
| California           | CA           |
| Colorado             | CO           |
| Connecticut          | CT           |
| Delaware             | DE           |
| District of Columbia | DC           |
| Florida              | FL           |

From the scrubbed data, I filtered to include only the sightings in the US. From this, I then found the frequency of sightings, as grouped by state:

| state |  count|
|:------|------:|
| ca    |   8912|
| wa    |   3966|
| fl    |   3835|
| tx    |   3447|
| ny    |   2980|
| il    |   2499|
| az    |   2414|
| pa    |   2366|
| oh    |   2275|
| mi    |   1836|

I then joined this table with the `state` location data in order to produce a map showing the frequency of sightings per state:

|       long|       lat|  group|  order| name    | subregion | state |  count|
|----------:|---------:|------:|------:|:--------|:----------|:------|------:|
|  -87.46201|  30.38968|      1|      1| alabama | NA        | al    |    642|
|  -87.48493|  30.37249|      1|      2| alabama | NA        | al    |    642|
|  -87.52503|  30.37249|      1|      3| alabama | NA        | al    |    642|
|  -87.53076|  30.33239|      1|      4| alabama | NA        | al    |    642|
|  -87.57087|  30.32665|      1|      5| alabama | NA        | al    |    642|
|  -87.58806|  30.32665|      1|      6| alabama | NA        | al    |    642|

Results
-------

![UFO sightings per state](https://raw.githubusercontent.com/siobhanmccarter/ufo-analysis/master/results/figures/ufo_sightings.png)

Conclusion and Summary
----------------------

By far, California has the highest number of sightings. There does not appear to be an obvious geospatial connection between the frequency of sightings. It is worth noting that the midwest states have lower counts, while the southern and Pacific states have higher counts. Future studies of this data could incorportate methods such as measuring relative frequency of UFO sightings instead of solely using count per state. This would account for more densely-populated states reporting higher frequencies of UFO sightings based solely on there being more people residing in the state. Further analysis is necessary to draw any meaningful conclusions.
