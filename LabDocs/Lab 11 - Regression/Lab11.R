#
# Hands on exercise on R
# Day 11 - Regression
# Author @Gudi Varaprasad - 19BCE7048
# Date : 07-12-2020
# 
#----------------------------------------------------------------------------

#getwd()
setwd("E:\\VITAP\\19BCE7048\\Semester_3\\Applied Statistics\\R programming Lab\\Lab Materials\\Lab 11 - Regression")
#getwd()

# 1

dataset=read.csv('dataset.csv',sep=',',header = TRUE)

x = dataset$ï..NS
y = dataset$SR

meanx=mean(x)
meany=mean(y)

beta1 = sum((x-meanx)*(y-meany)) / (sum((x-meanx)^2))
print("Slope = ")
print(beta1)

beta0 = meany-(beta1*meanx)
print("Intercept = ")
print(beta0)

#a
shear_stress = beta0 + beta1*27.5
print(shear_stress)

#b

dataset=read.csv('dataset.csv',sep=',',header = TRUE)

x = dataset$ï..NS
y = dataset$SR

windows()
plot(x, y, col="red", main="Plotting the regression line", xlab="Normal Stress", ylab="Shear Resistance")

y = beta0 + beta1*x
par(new=TRUE)
plot(x, y, col="black", type="l", pch=16, main="Plotting the regression line", xlab="Normal Stress", ylab="Shear Resistance")


######################################################################################################################################

# verification :

dataset=read.csv('dataset.csv',sep=',',header = TRUE)

x = dataset$ï..NS
y = dataset$SR

relation = lm(y~x)  #to get the relation between normal stress and shear resistance i.e. slope, beta0 value
print(relation)
# print(summary(relation))

a = data.frame(x=27.5) #giving the value at which we need to find the shear resistance

result = predict(relation,a) #using predict to find the value
print(result)

# b)

windows()
plot(x, y, col="red", main="Plotting the regression line - verification", abline(lm(x~y)), pch=16, xlab="Normal Stress", ylab="Shear Resistance")
