#----------------------------------------
# Clear environment and load packages
#----------------------------------------
rm(list=ls())
library(MASS)
library(psych)
library(vannstats)

#----------------------------------------
# load mtcars as new 'data1' object
#----------------------------------------
data1 <- mtcars

#----------------------------------------
# bivariate table: observed and expected frequencies for the relationship between 'vs' (straight/not-V-shaped engine) and 'am' (manual transmission)
#----------------------------------------
tab(data1, vs, am)

#----------------------------------------
# run the chi square test, examining the relationship between 'vs' and 'am'
#----------------------------------------
chisq.test(data1$vs, data1$am, correct=FALSE)

