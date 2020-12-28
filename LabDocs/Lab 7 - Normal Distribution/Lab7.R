#
# Hands on exercise on R
# Day 7 - Normal Distribution
# Author @Gudi Varaprasad - 19BCE7048
# Date : 28-11-2020
# 
#----------------------------------------------------------------------------

# 1) IQ is a normal distribution of mean of 100 and standard deviation of 15

# a) What percentage of people have an IQ<125 ?
# pnorm(x, mean, sd)
pnorm(125, 100, 15) * 100

# b) What percentage of people have IQ>110 ?
(1 - pnorm(110, 100, 15))* 100

# c) What percentage of people have 110<IQ<125 ?
(pnorm(125,100,15,lower.tail=TRUE) - pnorm(110,100,15,lower.tail=TRUE)) * 100

# d) Find 25% for standard normal distribution.
qnorm(0.25)

# e) Find 25% normal distribution with mean and standard deviation 2& 3
qnorm(0.25,2,3,lower.tail=TRUE)

# f) What IQ separates the lower 25% from the others
qnorm(0.25,100,15,lower.tail=TRUE)

# g) What IQ separates the top 25% from the others
qnorm(0.25,100,15,lower.tail=FALSE)
qnorm(0.75,100,15,lower.tail=TRUE)

# h) Find 25 percentile for mean 100 and SD 15.
qnorm(0.25,100,15)


# 2) Generate the 20 random number for a normal distribution with 
# mean 572 and SD is 51. Calculate mean and SD of data set.
r = rnorm(20,572,51)
mean(r)
sd(r)

# 3) Make appropriate histogram of data in above question and visually assume 
# if normal density curve & histogram density estimates are similar.

# red for histogram || blue for normal curve
d = rnorm(20,572,51)
meann = mean(d)
stdv = sd(d)
windows()
hist(d, xlab="Normal Distribution data", freq = FALSE, 
     main = "Histogram with Normal Curve and smoothed curve")
curve(dnorm(x, mean=meann, sd=stdv), col="red", lwd=2, add=TRUE)
lines(density(d, adjust = 1), col="blue", lwd=2)



# GVP