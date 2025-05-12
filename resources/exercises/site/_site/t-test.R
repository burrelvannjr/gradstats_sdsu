#----------------------------------------
# Clear environment and load packages
#----------------------------------------
#rm(list=ls()) #clear environment
#options(scipen = 999) #scientific notation off
#options(scipen = 0) #scientific notation on
library(MASS)
library(psych)
library(vannstats)


#----------------------------------------
# load mtcars as new 'data1' object
#----------------------------------------
data1 <- mtcars

#----------------------------------------
# univariate stats for 'mpg' variable in 'data1' object, broken out by 'am' (manual transmission) variable
#----------------------------------------
describeBy(data1$mpg, data1$am)

#----------------------------------------
# histogram of 'mpg' broken out by 'am'
#----------------------------------------
hst(data1, mpg, am)

#----------------------------------------
# boxplot of 'mpg' broken out by 'am'
#----------------------------------------
box(data1, mpg, am)

#----------------------------------------
# qq plot of 'mpg' broken out by 'am'
#----------------------------------------
qq(data1, mpg, am)

#----------------------------------------
# run the t-test, examining the difference between 'mpg' means for each 'am'
#----------------------------------------
t.test(data1$mpg ~ data1$am, var.equal=TRUE)

