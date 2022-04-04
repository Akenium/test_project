
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

# define priors for brm
prior_brms <- c(prior(normal(0, 1), class = "Intercept"), 
                prior(normal(0, 1), class = "b"),
                prior(normal(0, 1), class = "sd"), 
                prior(lkj(2), class = "cor"))


