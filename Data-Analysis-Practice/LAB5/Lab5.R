# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 5
# Author @Gudi Varaprasad - 19BCE7048
# Date : 02-03-2021
# 
#-------------------------------------------------------------------------------

# Q1. Write a R program to enter any number and calculate its factorial.

myFactorial = function(n){
  fact = 1
  
  if(n < 0) {
  print("Factorial does not exist for Negative numbers")
    } else if(n == 0) {
      print("The factorial of 0 is 1")
      } else {
        for(i in 1:n) {
          fact = fact * i
          }
        print(paste("The factorial of", n ,"is = ",fact))
      }
}
n = as.integer(readline(prompt="Enter a number: "))
myFactorial(n)


# Q2. Write a R program to print all Armstrong numbers between 1 to n.

myAmstrong = function(n){
  sum = 0
  flag=1
  while(flag<=n)
  {
    temp = flag
    sum=0
    while(temp > 0)
    {
      digit = temp %% 10
      sum = sum + (digit^3)
      temp = floor(temp / 10)
      
    }
    if(flag == sum) {
      print(flag)
    }
    flag=flag+1;
  }
}
n = as.integer(readline(prompt="Enter a number: "))
print(paste("Armstrong numbers between 1 to", n,"are :"))
myAmstrong(n)


# Q3. Create a data frame given below

EmployeeID = seq(1:20)
ManagerID = c(0, 1, 2, 3, 3, 3, 3, 4, 4, 4, 3, 4, 4, 3, 3, 1, 2, 2, 2, 2)

Title = c("Chief Executive Officer", "Vice President of Engineering", "Engineering Manager", 
          "Senior Tool Designer", "Design Engineer", "Design Engineer", "Research and Development Manager", 
          "Research and Development Engineer", "Research and Development Engineer", "Research and Development Manager", 
          "Senior Tool Designer", "Tool Designer", "Tool Designer", "Senior Design Engineer", "Design Engineer", 
          "Marketing Manager", "Marketing Assistant", "Marketing Specialist", "Marketing Assistant", "Marketing Assistant")

BirthDate = as.Date(c("1/29/1969", "8/1/1971", "11/12/1974", "12/23/1974", "9/27/1952", "3/11/1959", "2/24/1987", 
              "6/5/1986", "1/21/1979", "11/30/1984", "1/17/1978", "7/29/1959", "5/28/1989", "6/16/1979", 
              "5/2/1961", "3/19/1975", "5/3/1987", "3/6/1978", "1/29/1978", "3/17/1975"), format = "%m/%d/%Y")

MaritalStatus = c('S', 'S', 'M', 'S', 'M', 'M', 'M', 'S', 'M', 'M', 'S', 'M', 'M', 'S', 'M', 'S', 'S', 'S', 'S', 'M')
Gender = c('M', 'F', 'M', 'M', 'F', 'M', 'M', 'F', 'F', 'M', 'M', 'M', 'F', 'M', 'F', 'M', 'M', 'M', 'F', 'F')

givenData = data.frame(EmployeeID, ManagerID, Title, BirthDate, MaritalStatus, Gender)
names(givenData) = c('EmployeeID', 'ManagerID', 'Title', 'BirthDate', 'MaritalStatus', 'Gender')
givenData


# i) Append another column as Age by calculating the age from date of birth.

Age = floor(age_calc(givenData$BirthDate, enddate = Sys.Date(), units = "years"))
givenData$Age = Age
givenData


# ii)	Calculate the mean, median, variance and SD of age

print(paste("Mean = ", mean(givenData$Age)))

print(paste("Median = ", median(givenData$Age)))

print(paste("Variance = ", var(givenData$Age)))

print(paste("Standard Deviation = ", sd(givenData$Age)))

# iii)	Display the details of Gender=Female(F)
print(givenData[givenData$Gender == 'F',])

# iv)	Display the details of Gender= Male and who are married(M)
print(givenData[givenData$Gender == 'M' & givenData$MaritalStatus == 'M' ,])

# v)	Count no of person having Title= Market Assistant and Marital status as Single(S)
nrow(givenData[givenData$Title == "Marketing Assistant" & givenData$MaritalStatus == 'S' ,])
