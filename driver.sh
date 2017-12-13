# Driver script, Milestone 2
## SM Dec 2017
# what it does
#
# usage: bash driver.sh

# import the data
Rscript src/scrubbed-import.R data/scrubbed1.csv
Rscript src/states-import.R data/states1.csv

# analyze the data
Rscript src/analysis.R data/states1.csv data/scrubbed1.csv data/mapjoin.csv

# generate the output map
Rscript src/figures.R data/mapjoin.csv results/figures/ufo_sightings.png

# write to an .Rmd
Rscript -e 'ezknitr::ezknit("src/results.Rmd", out_dir = "doc")'
