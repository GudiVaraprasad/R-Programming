#
# Hands on exercise on R
# Day 1 - Basics about R
# Author @Gudi Varaprasad - 19BCE7048
# Date : 16-11-2020
# 
#------------------------------------------------------------------------------
#
# Collect at least 60 students and analyse the data by using descriptive 
# statistics and Interpret the results

# getwd()
# setwd("E:\VITAP\19BCE7048\Semester_3\Applied Statistics\R programming Lab\Lab Materials\Lab 3 - Descriptive Statistics")

dataset=read.csv('data.csv',sep=',',header = TRUE)
class(dataset)
str(dataset)
mat <- as.matrix(dataset)
class(mat)
nrow(mat)
ncol(mat)

# first value in mat
mat[1, 1]

# a middle value in mat
mat[4, 2]

mat[1:4, 1:2]

mat[5:8, 1:2]

mat[c(1,3,5), c(1,3)]

# All columns from row 5
mat[5, ]

# first row, all of the columns
col_1 <- mat[1, ]

# max particle size for col_1
max(col_1)

# max particle size for col_2
max(mat[2, ])

# minimum particle size for operator 3
min(mat[, 3])

# mean for operator 3
mean(mat[, 3])

# median for operator 3
median(mat[, 3])

# standard deviation for operator 3
sd(mat[, 3])

#
dataset=read.csv('data.csv',sep=',',header = TRUE)
class(dataset)
str(dataset)

mean(dataset$COMPUTERS)
median(dataset$COMPUTERS)
sd(dataset$COMPUTERS)

mean(dataset$MATH)
median(dataset$MATH)
sd(dataset$MATH)

mean(dataset$ECE)
median(dataset$ECE)
sd(dataset$ECE)


#
dataset=read.csv('data.csv',sep=',',header = TRUE)
# stats graphs
#
par(mfrow=c(3,3))
plot(dataset$COMPUTERS,dataset$ECE, xlab = "Computers", ylab = "ECE", main="Plot Graph")
plot(dataset$COMPUTERS,dataset$MATH, xlab = "Computers", ylab = "Math", main="Plot Graph")
plot(dataset$MATH,dataset$ECE, xlab = "Math", ylab = "ECE", main="Plot Graph")

hist(dataset$COMPUTERS, main="Histogram COMP")
hist(dataset$MATH, main="Histogram MATH")
hist(dataset$ECE, main="Histogram ECE")

boxplot(dataset$COMP, main="Box Plot COMP")
boxplot(dataset$MATH, main="Box Plot MATH")
boxplot(dataset$ECE, main="Box Plot ECE")


# GVP
