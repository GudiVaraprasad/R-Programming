# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 1
# Author @Gudi Varaprasad - 19BCE7048
# Date : 04-02-2021
# 
#-------------------------------------------------------------------------------
#
# Q1. Practice Some basic calculations :

# Log of 3 =
log(3)

# Square root of 121
sqrt(121)

#((p-(q+r))*s) where take input as p=5,q=2,r=3,s=6
p = as.integer(readline(prompt="Enter p : "))
q = as.integer(readline(prompt="Enter q : "))
r = as.integer(readline(prompt="Enter r : "))
s = as.integer(readline(prompt="Enter s : "))
answer = (p-(q+r))*s
answer


# Q2. Abhisekh is buying the number of baskets where each basket is containing 
# n number of eggs.  Take input of the number of baskets, the number of eggs 
# in each basket and the cost of each egg. Write a R program for calculating 
# the cost of the total number of eggs.

numberOfBaskets = as.integer(readline(prompt="Enter Number of Baskets : "))

numberOfEggs = as.integer(readline(prompt="Enter Number of Eggs in each basket : "))

costOfEgg = as.integer(readline(prompt="Enter cost of each Egg : "))

totalCostOfEggs = numberOfBaskets * numberOfEggs * costOfEgg
print(paste("Total Cost Of Eggs = ", totalCostOfEggs))



# Q3. Defining and initializing a vector and calculate Mean, Variance, Standard deviation.
myVector = c(5.04, -1.1, 3, 8.22, -0.7, 9)
vectorMean = mean(myVector)
print(paste("Mean is = ", vectorMean))

vectorVariance = (sum((myVector - vectorMean)^2))/length(myVector)
print(paste("Variance is = ", vectorVariance))

vectorStandardDeviation = sqrt(vectorVariance)
print(paste("Standard deviation is = ", vectorStandardDeviation))

# 19BCE7048