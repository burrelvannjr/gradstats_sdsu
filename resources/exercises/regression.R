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
# boxplot of 'mpg'
#----------------------------------------
box(data1, mpg)

#----------------------------------------
# boxplot of 'wt'
#----------------------------------------
box(data1, wt)

#----------------------------------------
# boxplot of 'am'
#----------------------------------------
box(data1, am)



#----------------------------------------
# check the multicollinearity assumption by calling a correlation matrix on the regression equation (with all the variables).
#----------------------------------------
cormat(data1, mpg ~ wt + am)


#----------------------------------------
# check the linearity, normality, and homoskedasticity assumption by calling a residuals plot on the regression model
#----------------------------------------
residplot(data1, mpg ~ wt + am)


#----------------------------------------
# run the regression model for predicting values of 'mpg' from the combination of 'wt' and 'am'. Use summary to correctly report results. 
#----------------------------------------
summary(lm(mpg ~ wt + am, data=data1))
