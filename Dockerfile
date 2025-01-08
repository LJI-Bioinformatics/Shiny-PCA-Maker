FROM rocker/shiny:4.2

# install R dependencies
COPY install-R-deps.R /tmp/
RUN Rscript /tmp/install-R-deps.R

# install bioconductor dependencies
COPY install-bioc-deps.R /tmp/
RUN Rscript /tmp/install-bioc-deps.R

# copy the app into place
COPY . /srv/shiny-server