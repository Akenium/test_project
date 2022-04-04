
load(file = "rd.RData")

library(plyr); library(dplyr); library(tidyr)
library(brms)
options(mc.cores = parallel::detectCores())

library(tidyverse)
library(raster)
library(sp)
library(rgdal)
library(sf)
library(mapview)
library(foreign)
library(sqldf)
library(lwgeom)
library(ggplot2)
library(reshape2)
library(tinytex)
library(stringr)
library(lme4)

