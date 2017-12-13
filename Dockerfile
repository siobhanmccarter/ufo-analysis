# Docker file for ufo_analysis
# Siobhan McCarter, Dec 2017

# use rocker/tidyverse as the base image and
FROM rocker/tidyverse

# install the ezknitr packages
RUN Rscript -e "install.packages('ezknitr', repos = 'http://cran.us.r-project.org')"

# install the readr packages
RUN Rscript -e "install.packages('readr', repos = 'http://cran.us.r-project.org')"

# Install packrat
RUN Rscript -e "install.packages('packrat', repos = 'http://cran.us.r-project.org')"
