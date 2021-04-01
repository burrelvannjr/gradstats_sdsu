#----------------------------------------
# Clear environment and load packages
#----------------------------------------
rm(list=ls())
library(MASS)
library(psych)
install.packages("gplots") #run this to install the 'gplots' package for plotting
library(gplots)
devtools::install_github("burrelvannjr/vannstats") #run this to update package from github
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
# run the analysis of variance, examining the difference between 'mpg' means for each 'cyl'
#----------------------------------------
summary(aov(data1$mpg ~ data1$cyl))

#----------------------------------------
# plot the means (and 95% confidence intervals around the mean) to examine whether and which means are different from others
#----------------------------------------
plotmeans(mpg ~ cyl, data = data1,
          xlab = "Cylinder", ylab = "Miles Per Gallon",
          main="Mean Plot with 95% CI")

#----------------------------------------
# run Tukey HSD post-hoc test to examine whether and which means are *significantly* different from others. Exhaustive list of comparisons, adjusts alpha to account for all comparisons
#----------------------------------------
TukeyHSD(aov(data1$mpg ~ factor(data1$cyl)))

