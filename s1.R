
glmm_S4 <- lmer(data = rd[which(rd$Strata.Sylv==4), ], 
                gig_abs ~ dbh + NCI + alt + WES + LES + dbh:WES + dbh:LES + NCI:WES + NCI:LES + Slope:WES + Slope:LES + Curvature:WES + Curvature:LES + alt:WES + alt:LES + SW:WES + SW:LES + (1 + alt + dbh + NCI | SpCode) + (1 | treeid) + (1 | year))

glmm_S4


