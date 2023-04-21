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
# check the linearity assumption by plotting the relationship between 'wt' and 'mpg'. Plot a scatterplot with a least-squares line (of best fit)
#----------------------------------------
scatter(data1, mpg, wt)

#can also run the two lines below to get the same result
#plot(data1$wt, data1$mpg) #(x,y)
#abline(lm(data1$mpg~data1$wt), col="Blue") #regression line (y~x))

#----------------------------------------
# histogram of 'mpg'
#----------------------------------------
hst(data1, mpg)

#----------------------------------------
# histogram of 'wt'
#----------------------------------------
hst(data1, wt)

#----------------------------------------
# boxplot of 'mpg'
#----------------------------------------
box(data1, mpg)

#----------------------------------------
# boxplot of 'wt'
#----------------------------------------
box(data1, wt)

#----------------------------------------
# qq plot of 'mpg'
#----------------------------------------
qq(data1, mpg)

#----------------------------------------
# qq plot of 'wt'
#----------------------------------------
qq(data1, wt)

#----------------------------------------
# univariate stats for 'mpg' variable in 'data1' object
#----------------------------------------
describe(data1$mpg)

#----------------------------------------
# univariate stats for 'wt' variable in 'data1' object
#----------------------------------------
describe(data1$wt)

#----------------------------------------
# run the correlation, examining the relationship between 'mpg' and 'wt'
#----------------------------------------
p.corr(data1, mpg, wt)

