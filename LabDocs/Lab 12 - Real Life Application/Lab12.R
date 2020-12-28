#
# Hands on exercise on R
# Day 12 - Real life Problem
# Author @Gudi Varaprasad - 19BCE7048
# Date : 08-12-2020
# 
#----------------------------------------------------------------------------

#getwd()
setwd("E:\\VITAP\\19BCE7048\\Semester_3\\Applied Statistics\\R programming Lab\\Lab Materials\\Lab 12 - Real Life Application")
#getwd()

# TRANSFORMING OF DATA :

engine <- read.csv(file="table.csv",sep=",",head=TRUE)

names(engine)

summary(engine)

qqnorm(engine$co,main="Carbon Monoxide")
qqline(engine$co)
windows()
par(mfrow=c(1,3))
boxplot(engine$co,main="Carbon Monoxide")
hist(engine$co,main="Carbon Monoxide")
qqnorm(engine$co,main="Carbon Monoxide")
qqline(engine$co)

lengine <- log(engine$co)
windows()
par(mfrow=c(1,3))
boxplot(lengine,main="Carbon Monoxide")
hist(lengine,main="Carbon Monoxide")
qqnorm(lengine,main="QQ Plot for the Log of the Carbon Monoxide")
qqline(lengine)


# The Confidence Interval :

m = mean(lengine)
print(m)
s = sd(lengine)
print(s)
n = length(lengine)
print(n)

se = s/sqrt(n) # standard error
print(se)

error = se*qt(0.975,df=n-1)
print(error)

left = m-error
print(left)
right = m + error
print(right)

exp(left)
exp(right)


# Test of Significance

lNull = log(5.4) - error
print(lNull)
rNull = log(5.4) + error
print(rNull)
print(m)

2*(1-pt((m-log(5.4))/se,df=n-1))

t.test(lengine,mu = log(5.4),alternative = "two.sided")

tLeft = (lNull-log(7))/(s/sqrt(n))
tRight = (rNull-log(7))/(s/sqrt(n))
p = pt(tRight,df=n-1) - pt(tLeft,df=n-1)
print(p)
print(1-p)
