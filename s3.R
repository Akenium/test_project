
library(lme4)

library(plyr); library(dplyr); library(tidyr)
library(brms)
options(mc.cores = parallel::detectCores())


load(file = "rd.RData")


# define priors for brm
prior_brms <- c(prior(normal(0, 1), class = "Intercept"), 
                prior(normal(0, 1), class = "b"),
                prior(normal(0, 1), class = "sd"), 
                prior(lkj(2), class = "cor"))





glmm_S4 <- lmer(data = rd[which(rd$Strata.Sylv==3), ], 
                gig_abs ~ dbh + NCI + alt + WES + LES + dbh:WES + dbh:LES + NCI:WES + NCI:LES + Slope:WES + Slope:LES + Curvature:WES + Curvature:LES + alt:WES + alt:LES + SW:WES + SW:LES + (1 + alt + dbh + NCI | SpCode) + (1 | treeid) + (1 | year))

glmm_S4


