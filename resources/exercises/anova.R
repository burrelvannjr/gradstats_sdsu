#----------------------------------------
# Clear environment and load packages
#----------------------------------------
rm(list=ls())
library(MASS)
library(psych)
devtools::install_github("burrelvannjr/vannstats") #run this to update package from github
library(vannstats)

#----------------------------------------
# load mtcars as new 'data1' object
#----------------------------------------
data1 <- mtcars

#----------------------------------------
# univariate stats for 'mpg' variable in 'data1' object, broken out by 'cyl' variable
#----------------------------------------
describeBy(data1$mpg, data1$cyl)

#----------------------------------------
# histogram of 'mpg' broken out by 'cyl'
#----------------------------------------
hst(data1, mpg, cyl)

#----------------------------------------
# boxplot of 'mpg' broken out by 'cyl'
#----------------------------------------
box(data1, mpg, cyl)

#----------------------------------------
# qq plot of 'mpg' broken out by 'cyl'
#----------------------------------------
qq(data1, mpg, cyl)

#----------------------------------------
# run the analysis of variance, examining the difference between 'mpg' means for each 'cyl', also, call a means plot and Tukey's HSD Post-Hoc test
#----------------------------------------
ow.anova(data1, mpg, cyl, plot = T, hsd = T)
