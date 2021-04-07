# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 3
# Author @Gudi Varaprasad - 19BCE7048
# Date : 16-02-2021
# 
#-------------------------------------------------------------------------------

# Q1. Declare and define list and find the mode of it.
mylist = list(1,5,-4,3.5,0)
mylist
mode(mylist)

# Q2. Declare two vectors and convert it to a matrix.

mylist = c(7:22)
roww = c("row 1", "row 2", "row 3", "row 4") 
col = c("column 1", "column 2", "column 3", "column 4") 
m = matrix(mylist, nrow = 4,dimnames = list(roww, col))
print(m)


# Q3. Declare two matrices. Find the sum and multiplication of the two matrices and store it in 3rd matrix.

matrix1 <- matrix(7:22, nrow=4)
matrix1
matrix2 <- matrix(3:18, nrow=4) 
matrix2

matrix3 = matrix1 %*% matrix2  # %*% matrix multiplication operator
print(matrix3)


# Q4. Declare and define matrix of integer class. Find the mean, median, mod, variance and standard deviation with respect to row and col.

mylist = c(5L, -2L, 5L, 0L)
roww = c("row1", "row2") 
col = c("column1", "column2")
intMatrix = matrix(mylist, nrow=2, byrow=TRUE, dimnames = list(roww, col))
intMatrix

print(paste("Mean of 1st row = ", mean(intMatrix[1,])))
print(paste("Mean of 2nd row = ", mean(intMatrix[2,])))

print(paste("Mean of 1st column = ", mean(intMatrix[,1])))
print(paste("Mean of 2nd column = ", mean(intMatrix[,2])))

print(paste("Mode of 1st row = ", class(intMatrix[1,])))
print(paste("Mode of 2nd row = ", class(intMatrix[2,])))

print(paste("Mode of 1st column = ", class(intMatrix[,1])))
print(paste("Mode of 2nd column = ", class(intMatrix[,2])))

print(paste("Median of 1st row = ", median(intMatrix[1,])))
print(paste("Median of 2nd row = ", median(intMatrix[2,])))

print(paste("Median of 1st column = ", median(intMatrix[,1])))
print(paste("Median of 2nd column = ", median(intMatrix[,2])))

print(paste("Variance of 1st row = ", var(intMatrix[1,])))
print(paste("Variance of 2nd row = ", var(intMatrix[2,])))

print(paste("Variance of 1st column = ", var(intMatrix[,1])))
print(paste("Variance of 2nd column = ", var(intMatrix[,2])))

print(paste("Standard Deviation of 1st row = ", sd(intMatrix[1,])))
print(paste("Standard Deviation of 2nd row = ", sd(intMatrix[2,])))

print(paste("Standard Deviation of 1st column = ", sd(intMatrix[,1])))
print(paste("Standard Deviation of 2nd column = ", sd(intMatrix[,2])))


