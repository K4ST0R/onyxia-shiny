# Base image
FROM rocker/shiny:4.4 AS shiny

# Install required linux librairies
RUN apt-get update && apt-get install -y \
    --no-install-recommends \
    git-core \
    libssl-dev \
    libcurl4-gnutls-dev \
    curl \
    libsodium-dev \
    libxml2-dev \
    libicu-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install R package and its dependencies
ENV _R_SHLIB_STRIP_=true
RUN install2.r remotes

# Install shinygouv
RUN Rscript -e 'remotes::install_github("spyrales/shinygouv")'

FROM shiny AS app

COPY shiny/ /srv/shiny-server/app
RUN cd /srv/shiny-server/app && ls -d * | xargs -I {} bash -c "Rscript -e 'remotes::install_deps(\"{}\")'"
RUN cd /srv/shiny-server/app && ls -d * | xargs -I {} bash -c "Rscript -e 'install.packages(\"{}\", repos = NULL, type=\"source\")'"

#USER shiny
EXPOSE 3838
CMD ["/usr/bin/shiny-server"]
