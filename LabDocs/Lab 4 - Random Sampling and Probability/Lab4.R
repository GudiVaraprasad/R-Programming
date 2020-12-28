#
# Hands on exercise on R
# Day 4 - Basics about R
# Author @Gudi Varaprasad - 19BCE7048
# Date : 21-11-2020
# 
#-------------------------------------------------------------

# Create one matrix x with 1 to 12 numbers with 3X4 order

x = (1:12)
y = matrix(x,nrow = 3, ncol = 4, byrow = "TRUE")
print(y)

# b with matrix function
y = matrix(c(1:12),nrow = 3, ncol = 4, byrow = "TRUE")
print(y)

# Give name of rows of this matrix with A,B,C
rownames(y) <- c("A","B","C")
print(y)

# Transpose of the matrix.
trans = t(y)
print(trans)

a<-rbind(runif(3,min=1,max=100),runif(3,min=1,max=100),runif(3,min=1,max= 100),runif(3,min=1,max=100))

# Use arbitrary numbers to create matrix.
#Creating a Matrix  
MatrixA <- matrix(data = 1:9, nrow = 3, ncol = 3)  
#Printing Matrix  
MatrixA

#Creating a new Matrix using rbind()  
MatrixB <- rbind(MatrixA, c(10,11,12))  
#Printing that Matrix  
MatrixB

#Creating a new Matrix using cbind()  
MatrixC <- cbind(MatrixA, c(10, 11, 12))  
#Printing Matrix  
MatrixC

# Use arbitrary numbers to create matrix
matrix(sample(1:20), nrow=4, ncol=4)


# Verify matrix multiplication

# matrix multiplication in R - setup 
matrix(c(1,5,3,8), ncol=2, nrow=2)

# matrix multiplication in R - element by element 
a = matrix(c(1,3,5,7), ncol=2, nrow=2)
b = matrix(c(2,4,6,8), ncol=2, nrow=2)
print(a*b)

# matrix multiplication in R - algebraic
m1 = a %*% b
print(m1)
m2 = b %*% a
print(m2)
identical(a, b)

# ------------------------------------------------------------------------------


# In R, you can simulate these situations with the sample function. 
# Pick five numbers at random from the set 1:40
arb = sample(1:40, 5, replace=T)
print(arb)

# 2 b)
sample(c("H", "T"), 10, replace=T)

# 2 c)
sample(c("success", "failure"), 10, replace=T, prob=c(90,10))

# 2 d)

choose(40, 5)

# 2 e) Find 5!

factorial <- function(n) {
  if(n <= 1) {
    return(1)
  } else { 
    return(n * factorial(n-1))
  }
}
factorial(5)














