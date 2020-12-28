#
# Hands on exercise on R
# Day 10 - Correlation
# Author @Gudi Varaprasad - 19BCE7048
# Date : 05-12-2020
# 
#----------------------------------------------------------------------------

# 1
#getwd()
setwd("E:\\VITAP\\19BCE7048\\Semester_3\\Applied Statistics\\R programming Lab\\Lab Materials\\Lab 10 - Correlation")
#getwd()

dataset=read.csv('Question1.csv',sep=',',header = TRUE)

x = dataset$ï..SG
y = dataset$MR

meanx = mean(x)
meany = mean(y)

Sxx = sum((x - meanx) * (x - meanx))
Syy = sum((y - meany) * (y - meany))
Sxy = sum((x - meanx) * (y - meany))

r = Sxy / (sqrt(Sxx*Syy))
print(r)

# Verification:
cor(x, y, method="pearson")


# 2
x = c(70,92,80,74,65,83)
y = c(74,84,63,87,78,90)

meanx = mean(x)
meany = mean(y)

Sxx = sum((x - meanx) * (x - meanx))
Syy = sum((y - meany) * (y - meany))
Sxy = sum((x - meanx) * (y - meany))

r = Sxy / (sqrt(Sxx*Syy))
print(r)
windows()
par(mfrow=c(1,2))
plot(x,y, xlab = "Mathematics Grade", ylab = "English Grade", main = "Grade Plot")

# Verification:
cor(x, y, method="pearson")
plot(x,y, xlab = "Mathematics Grade", ylab = "English Grade", main = "Grade Plot - verification")

# 3
#getwd()
setwd("E:\\VITAP\\19BCE7048\\Semester_3\\Applied Statistics\\R programming Lab\\Lab Materials\\Lab 10 - Correlation")
#getwd()

dataset=read.csv('Question3.csv',sep=',',header = TRUE)

x = dataset$AS
y = dataset$DL

meanx = mean(x)
meany = mean(y)

Sxx = sum((x - meanx) * (x - meanx))
Syy = sum((y - meany) * (y - meany))
Sxy = sum((x - meanx) * (y - meany))

r = Sxy / (sqrt(Sxx*Syy))
print(r)

# Verification:
cor(x, y, method="pearson")
  
