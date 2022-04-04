pkg <- 
  c(
    "plyr",
    "dplyr",
    "tidyr",
    "tidyverse",
    "brms",
    "raster",
    "sp",
    "rgdal",
    "sf",
    "mapview",
    "foreign",
    "sqldf",
    "lwgeom",
    "ggplot2",
    "reshape2",
    "tinytex",
    "stringr",
    "lme4"
  )
for (i in pkg) {
  install.packages(i)
}
