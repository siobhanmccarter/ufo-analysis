# Driver script, Milestone 2
## SM Dec 2017
# what it does
#
# usage: bash driver.sh

# import the data
Rscript src/scrubbed-import.R data/scrubbed1.csv
Rscript src/states-import.R data/states1.csv

# analyze the data
Rscript src/analysis.R data/mapjoin.csv

# generate the output map
#Rscript

# write to an .Rmd
#Rscript -e 'ezknitr::ezknit("src/count_report.Rmd", out_dir = "doc")'
