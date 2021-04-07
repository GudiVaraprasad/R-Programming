# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 8
# Author @Gudi Varaprasad - 19BCE7048
# Date : 06-04-2021
# 
#----------------------------------------------------------------------------------------

# 1)

X1 = c(46, 58, NA, 13, 21, 64, 2, 20, 37, 34)
X2 = c(72, 29, 58, 76, 9, 45, NA, 19, NA, 35)
X3 = c(45, 62, 6, 54, 65, 44, 46, NA, 78, 62)
X4 = c(27, 78, 65, 25, 74, 22, 57, 41, NA, 13)
X5 = c(20, 50, 69, 21, 60, 50, 43, 48, 32, 11)
X6 = c(55, 14, NA, NA, 13, 65, 45, 65, NA, 68)
X7 = c(50, 18, 20, 76, 6, 1, 43, 73, 59, 50)
X8 = c(69, 7, NA, NA, NA, 36, 54, NA, 76, 70)
X9 = c(38, 6, NA, 12, 17, 55, 8, NA, 2, NA)
X10 = c(NA, 79, 37, NA, 4, 64, 33, 13, 10, 75)

newdata = data.frame(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10)
newdata

# 1 a)
countNA = sum(is.na(newdata))
countNA

# 1 b)
complete.cases(newdata)
# Returns a logical vector indicating which cases are complete, i.e., have no missing values.

# 1 c)
Unewdata = na.exclude(newdata)
Unewdata

# 1 d)
meanX8 = mean(newdata$X8, na.rm = TRUE)

missingX8=c(which(is.na(newdata$X8)))

lenMissingX8 = length(missingX8)
for(i in 1:lenMissingX8){
  newdata$X8[missingX8[i]] = meanX8
}
newdata

# 1 e)
newdata[!duplicated(newdata$X2),]

# 2)

mpg = c(21, 21, 22.8, 21.4)
cyl = c(6, 6, 4, 6)
disp = c(160, 160, 108, 258)
hp = c(110, 110, 93, 110)
drat = c(3.9, 3.9, 3.85, 3.08)
wt = c(2.62, 2.875, 2.32, 3.215)
qsec = c(16.46, 17.02, 18.61, 19.44)
vs = c(0, 0, 1, 1)
am = c(1, 1, 1, 0)
gear = c(4, 4, 4, 3)
carb = c(4, 4, 1, 1)

mtc = data.frame(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)
row.names(mtc) = c('Mazda RX4', 'Mazda RX4 Wag', 'Datsun 710', 'Hornet 4 Drive')
mtc

# 2 a)
mtc[order(wt),]

# 2 b)
mtc[order(-disp),]

# 2 c)
mtc[order(cyl, hp),]

# 2 d)
mtc[order(mpg, -qsec),]

