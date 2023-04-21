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
# call mtcars data in console
#----------------------------------------
mtcars

#----------------------------------------
# load mtcars as new 'data1' object
#----------------------------------------
data1 <- mtcars

#----------------------------------------
# univariate stats for all variables in 'data1' object
#----------------------------------------
describe(data1)

#----------------------------------------
# univariate stats for 'mpg' variable in 'data1' object
#----------------------------------------
describe(data1$mpg)

#----------------------------------------
# univariate stats for 'mpg' variable in 'data1' object, broken out by 'cyl' variable
#----------------------------------------
describeBy(data1$mpg, data1$cyl)

#----------------------------------------
# run separate univariate/descriptive stats for 'mpg' variable in 'data1' object, removing NAs/missing cases
#----------------------------------------
mean(data1$mpg, na.rm=T) #mean

median(data1$mpg, na.rm=T) #median

sd(data1$mpg, na.rm=T) #standard deviation

min(data1$mpg, na.rm=T) #minimum

max(data1$mpg, na.rm=T) #maximum

range(data1$mpg, na.rm=T) #range

#mode(data1$mpg, na.rm=T) #mode

#----------------------------------------
# Z-score for hypothetical Subaru Crosstrek
#----------------------------------------
x_crosstrek <- 30 #object that is the raw score for a hypothetical Subaru Crosstrek with 30 'mpg' 

mean_mpg <- mean(data1$mpg, na.rm=T) #object that is the mean 'mpg' for the 'data1' data set
sd_mpg <- sd(data1$mpg, na.rm=T) #object that is the standard deviation of 'mpg' for the 'data1' data set

z_crosstrek <- ((x_crosstrek - mean_mpg) / (sd_mpg)) #object of the Z-score calculation for the hypothetical Subaru Crosstrek with 30 mpg

z_crosstrek #print the Z-score object, result 

#----------------------------------------
# Confidence Interval around mean 'mpg' in 'data1' for a 99.9% Confidence Level
#----------------------------------------
mean_mpg <- mean(data1$mpg, na.rm=T) #object that is the mean 'mpg' for the 'data1' data set
sd_mpg <- sd(data1$mpg, na.rm=T) #object that is the standard deviation of 'mpg' for the 'data1' data set
n <- sum(!is.na(data1$mpg)) #better way of counting observations, removing NAs on 'mpg' variable
Z_99 <- 3.29 #z-score associated with the 99.9% confidence level
SE <- (sd_mpg/sqrt(n)) #standard error of the mean, or the estimate of SD of the population, based on data from the sample

lower_bound_99 <- mean_mpg - Z_99*SE #calculate lower bound of 99.9% CI
upper_bound_99 <- mean_mpg + Z_99*SE #calculate upper bound of 99.9% CI

lower_bound_99 #print lower bound
upper_bound_99 #print upper bound

#----------------------------------------
# histogram of 'mpg'
#----------------------------------------
hst(data1, mpg) 

#----------------------------------------
# histogram of 'mpg' broken out by 'cyl'
#----------------------------------------
hst(data1, mpg, cyl)

#----------------------------------------
# boxplot of 'mpg' 
#----------------------------------------
box(data1, mpg)

#----------------------------------------
# boxplot of 'mpg' broken out by 'cyl'
#----------------------------------------
box(data1, mpg, cyl)

#----------------------------------------
# qq plot of 'mpg' 
#----------------------------------------
qq(data1, mpg)

#----------------------------------------
# qq plot of 'mpg' broken out by 'cyl'
#----------------------------------------
qq(data1, mpg, cyl)

#----------------------------------------
# randomly generated, normally-distributed data, with 100 cases, mean of 0, SD of 1
#----------------------------------------
rnorm(100,0,1)

#----------------------------------------
# create useable object of randomly generated, normally-distributed data, with 1000 cases, mean of 0, SD of 1
#----------------------------------------
thousand <- rnorm(1000,0,1)

#----------------------------------------
# histogram of 'thousand'
#----------------------------------------
hst(thousand) 

#----------------------------------------
# descriptive statistics for 'thousand'
#----------------------------------------
describe(thousand) 

#----------------------------------------
# create useable object of randomly generated, normally-distributed data, with 100000 cases, mean of 0, SD of 1
#----------------------------------------
hundred_thousand <- rnorm(100000,0,1)

#----------------------------------------
# histogram of 'hundred_thousand'
#----------------------------------------
hst(hundred_thousand) 

#----------------------------------------
# descriptive statistics for 'hundred_thousand'
#----------------------------------------
describe(hundred_thousand) 

