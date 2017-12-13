# Docker file for ufo_analysis
# Siobhan McCarter, Dec 2017

# use rocker/tidyverse as the base image and
FROM rocker/tidyverse

# install the ezknitr packages
RUN Rscript -e "install.packages('ezknitr', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
