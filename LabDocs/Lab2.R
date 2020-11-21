#
# Hands on exercise on R
# Day 1 - Basics about R
# Author @Gudi Varaprasad - 19BCE7048
# Date : 10-11-2020
# 
#----------------------------------------------------
#1
# a) 
x = (1:10)
print(x)
# b)
sum(x)
# c)
mean(x)
median(x)
# d)
print(sum(x*x))
# e)
print(sum(abs(x-mean(x))/length(x)))


#2
x.data <- data.frame(
  price = c (52.00, 54.75, 57.50, 57.50, 59.75, 62.50, 64.75, 67.25, 67.50, 69.75, 70.00, 75.50, 77.50, 78.00, 81.25, 82.50, 86.25, 87.50, 88.00, 92.00), 
  FloorArea = c(1225, 1230, 1200, 1000, 1420, 1450, 1380, 1510, 1400, 1550, 1720, 1700, 1660, 1800, 1830, 1790, 2010, 2000, 2100, 2240),
  Rooms = c(3, 3, 3, 2, 4, 3, 4, 4, 5, 6, 6, 5, 6, 7, 6, 6, 6, 6, 8, 7),
  Age = c(6.2, 7.5, 4.2, 4.8, 1.9, 5.2, 6.5, 9.2, 0.0, 5.7, 7.3, 4.5, 6.8, 0.7, 5.6, 2.3, 6.7, 3.4, 5.6, 3.4),
  CentralHeating = c("YES", "NO", "NO", "NO", "YES", "YES", "NO", "NO", "NO", "NO", "YES", "NO", "YES", "YES","YES", "NO", "YES", "NO", "YES", "YES") 
)
print(x.data)

# a)
length(x.data)

# b)
NROW(x.data)
NCOL(x.data)

# c)
names(x.data)

# d)
# head #tail

# e)
x.data[1:5,1:3]

# f)
x.data[c(1,3,6,10),c(2,4,5)]

# g)


#3
x.data <- data.frame(
  price = c (52.00, 54.75, 57.50, 57.50, 59.75, 62.50, 64.75, 67.25, 67.50, 69.75, 70.00, 75.50, 77.50, 78.00, 81.25, 82.50, 86.25, 87.50, 88.00, 92.00), 
  FloorArea = c(1225, 1230, 1200, 1000, 1420, 1450, 1380, 1510, 1400, 1550, 1720, 1700, 1660, 1800, 1830, 1790, 2010, 2000, 2100, 2240),
  Rooms = c(3, 3, 3, 2, 4, 3, 4, 4, 5, 6, 6, 5, 6, 7, 6, 6, 6, 6, 8, 7),
  Age = c(6.2, 7.5, 4.2, 4.8, 1.9, 5.2, 6.5, 9.2, 0.0, 5.7, 7.3, 4.5, 6.8, 0.7, 5.6, 2.3, 6.7, 3.4, 5.6, 3.4),
  CentralHeating = c("YES", "NO", "NO", "NO", "YES", "YES", "NO", "NO", "NO", "NO", "YES", "NO", "YES", "YES","YES", "NO", "YES", "NO", "YES", "YES") 
)

# a)
mean(x.data$price)
median(x.data$price)
sd(x.data$price)

mean(x.data$FloorArea)
median(x.data$FloorArea)
sd(x.data$FloorArea)

mean(x.data$Rooms)
median(x.data$Rooms)
sd(x.data$Rooms)

mean(x.data$Age)
median(x.data$Age)
sd(x.data$Age)


# b)
print(nrow(subset(x.data,x.data$CentralHeating=='YES')))
print(nrow(subset(x.data,x.data$CentralHeating=='NO')))

# c)
plot(x.data$price,x.data$FloorArea, xlab = "price", ylab = "FloorArea", main="Plot Graph")
plot(x.data$price,x.data$Age, xlab = "price", ylab = "Age", main="Plot Graph")
plot(x.data$price,x.data$Rooms, xlab = "price", ylab = "Rooms", main="Plot Graph")

# d)
par(mfrow=c(1,3))
hist(x.data$price, main="Histogram Price")
hist(x.data$FloorArea, main="Histogram FloorArea")
hist(x.data$Age, main="Histogram Age")

# e)
par(mfrow=c(1,3))
boxplot(x.data$price, main="Box Plot Price")
boxplot(x.data$FloorArea, main="Box Plot FloorArea")
boxplot(x.data$Age, main="Box Plot Age")

# f)
par(mfrow=c(3,3))
plot(x.data$price,x.data$FloorArea, xlab = "price", ylab = "FloorArea", main="Plot Graph")
plot(x.data$price,x.data$Age, xlab = "price", ylab = "Age", main="Plot Graph")
plot(x.data$price,x.data$Rooms, xlab = "price", ylab = "Rooms", main="Plot Graph")
hist(x.data$price, main="Histogram Price")
hist(x.data$FloorArea, main="Histogram FloorArea")
hist(x.data$Age, main="Histogram Age")
boxplot(x.data$price, main="Box Plot Price")
boxplot(x.data$FloorArea, main="Box Plot FloorArea")
boxplot(x.data$Age, main="Box Plot Age")

# GVP
