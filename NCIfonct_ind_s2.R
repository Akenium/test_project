
library(lme4)

library(plyr); library(dplyr); library(tidyr)
library(brms)
options(mc.cores = parallel::detectCores())


load(file = "rd2d.RData")


# define priors for brm
prior_brms <- c(prior(normal(0, 1), class = "Intercept"), 
                prior(normal(0, 1), class = "b"),
                prior(normal(0, 1), class = "sd"), 
                prior(lkj(2), class = "cor"))




fit_brm_S2_NCIfonct_ind <- brm(formula = gig_abs ~ 
                         dbh + NCIfonct_ind + alt  # level-1 model covariates
                       + WES + LES + dbh:WES + dbh:LES + NCIfonct_ind:WES + NCIfonct_ind:LES + Slope:WES + Slope:LES + Curvature:WES + Curvature:LES + alt:WES + alt:LES + SW:WES + SW:LES  # trait effects on intercept and model covariates
                       + (1 + alt + dbh + NCIfonct_ind | SpCode) # random effects of species
                       + (1 | treeid) + (1 | year)
                       # + (1 | site)
                       , #  random effects of individual, site (quadrat if within a plot or plot if comparison between plots), census
                       data=rd2d[which(rd2d$Strata.Sylv==2), ], # standardized inout data 
                       family=gaussian(), 
                       prior=prior_brms, 
                       iter=1200, chains=4, cores=4, seed=42, control=list(adapt_delta=0.99, max_treedepth=15))


save(fit_brm_S2_NCIfonct_ind, file="fit_brm_S2_NCIfonct_ind.RData")



