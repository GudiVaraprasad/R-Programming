#
# Hands on exercise on R
# Day 1 - Basics about R
# Author @Gudi Varaprasad - 19BCE7048
# Date : 9-11-2020
# 
#----------------------------------------------------
#1
# a) Enter the data {2,5,3,7,1,9,6}
# directly and store it in a variable x.
x <- c(2,5,3,7,1,9,6)
print(x)


# b) Find the number of elements in x, 
# i.e. in the data list.
length(x)


# c) Find the last element of x.
print(x[length(x)])


# d) Find the minimum element of x.
print(min(x))


# e) Find the maximum element of x.
print(max(x))
#----------------------------------------------------

#2 Enter the data {1, 2, ... ,19,20} in a variable x
x <- (1:20)
print(x)


# a) Find the 3rd element in the data list.
print(x[3])


# b) Find 3rd to 5th element in the datalist.
print(x[3:5])


# c) Find 2nd, 5th, 6th, and 12th element in list.
print(x[2])
print(x[5])
print(x[6])
print(x[12])


# d) Print the data as {20, 19, ., 2, 1} 
# without again entering the data.
print(rev(x))
#----------------------------------------------------

#3
# a) Create data list (4, 4, 4, 4, 3, 3, 3, 5, 5, 5) 
# using 'rep' function.
x<-c(rep(4,4),rep(3,3),rep(5,3))
print(x)


# b) Create list (4, 6, 3, 4, 6, 3, ., 4, 6, 3) 
# where there 10 occurrences of 4, 6, 3 are in order.
print(rep(c(4, 6, 3),10))


# c) Create a list 
# (3, 1, 5, 3, 2, 3, 4, 5, 7,7, 7, 7, 7,7, 6, 5, 4, 3, 2, 1, 34, 21, 54) 
# using one line command.
print(c(3,1,5,3,c(2:5),rep(7,6),c(6:1),34,21,54))


# d) First create a list (2, 1, 3, 4). 
# Then append this list at the end with another list
# (5, 7, 12, 6, -8). Check whether the number of 
# elements in the augmented list is 11.
l1 = list(2, 1, 3, 4)
l2 = list(5, 7, 12, 6, -8)
l3 = append(l1, l2)
# print(l3)
length(l3)==11
#----------------------------------------------------

#4
# a) Print all numbers starting with 3 and ending 
# with 7 with an increment of 0:0.5. 
# Store these numbers in x.
x = seq(from=3, to=7, by=0.5)
print(x)


# b) Print all even numbers between 2 and 14
l = seq(from=2, to=14, by=2)
print(l)


# c) Type 2*x and see what you get. 
# Each element of x is multiplied by 2.
print(2*x)