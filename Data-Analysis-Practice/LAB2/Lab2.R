# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 2
# Author @Gudi Varaprasad - 19BCE7048
# Date : 09-02-2021
# 
#-------------------------------------------------------------------------------

# Q1. Declare and define vectors of numeric class and character class.

numVector = c(5.04, -1.1, 3, 8.22, -0.7, 9)
numVector
charVector = c("a","vitap","cse","data","ss")
charVector


# Q2. Declare two vectors of complex class of same length. Find the sum of the two vectors.

vt1 = c(5+1.2*1i, -3-0.1*1i, 0-7*1i, -6*1i)
vt2 = c(0.3*1i, 2.2+5*1i, -8.2-0.77*1i, 1+1i)
print("Sum of the two vectors = ")
vt1+vt2


# Q3. Declare two vectors of numeric class of same length. Find the sum of the two vectors and assign to another vector. Find the average of resultant vector.

vect1 = c(5.04, -1.1, 3, -0.7, 9)
vect2 = c(-1, -0.33, 2.26, 7, -3.1)

vect3 = vect1+vect2
print("Sum of the two vectors = ")
vect3

avgvect3 = sum(vect3)/length(vect3)
print(paste("Average of resultant vector = ", avgvect3))


# Q4. Declare and define vector of integer and numeric class. Find the mean, median, mod, variance and standard deviation for both the class separately.

intVector = c(5L, -2L, 3L, 5L, -8L, 5L, 2L, 9L, 5L)
intVector
print(paste("Mean = ", mean(intVector)))
print(paste("Mode = ", mode(intVector)))
print(paste("Median = ", median(intVector)))
print(paste("Variance = ", var(intVector)))
print(paste("Standard Deviation = ", sqrt(var(intVector))))

numVector = c(3, 5.04, -1.1, 3, 8.22, 3, -0.7, 9, 3)
numVector
print(paste("Mean = ", mean(numVector)))
print(paste("Mode = ", mode(numVector)))
print(paste("Median = ", median(numVector)))
print(paste("Variance = ", var(numVector)))
print(paste("Standard Deviation = ", sqrt(var(numVector))))
