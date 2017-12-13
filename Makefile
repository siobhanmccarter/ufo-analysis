# Makefile
# Siobhan McCarter, Dec 2017
# Completes analysis of UFO sightings per state (from raw data to rendering report)
#
# usage: make all

# run all analysis
all: doc/results.md

# make data files
results/scrubbed1.csv: data/scrubbed.csv src/scrubbed-import.R
	Rscript src/scrubbed-import.R results/scrubbed1.csv
results/states1.csv: data/states.csv src/states-import.R
	Rscript src/states-import.R results/states1.csv

# analyze the data
results/mapjoin.csv: results/scrubbed.csv results/states.csv src/analysis.R
	Rscript src/analysis.R results/states1.csv results/scrubbed1.csv results/mapjoin.csv

# generate the output map
results/figures/ufo_sightings.png: results/mapjoin.csv src/figures.R
	Rscript src/figures.R results/mapjoin.csv results/figures/ufo_sightings.png


# write to an .Rmd
doc/results.md: src/results.Rmd results/figures/ufo_sightings.png
	Rscript -e 'ezknitr::ezknit("src/results.Rmd", out_dir = "doc")'

# clean up intermediate files
clean:
		rm -f results/mapjoin.csv
		rm -f results/scrubbed1.csv
		rm -f results/states1.csv
		rm -f results/scrubbed.dat
		rm -f results/states.dat
		rm -f results/figures/ufo_sightings.png
		rm -f doc/results.html
