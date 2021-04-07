# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 4
# Author @Gudi Varaprasad - 19BCE7048
# Date : 23-02-2021
# 
#-------------------------------------------------------------------------------

# Q1. Declare a data frame named as Stu_Result of 15 students with attributes Reg.No, Name, M1, M2, M3, M4 and M5.

RegNo = c(101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115)
Name = c("Ramesh", "Sakshi", "Krishna", "Siri", "Alex", "Ramya", "Kiran", "Karthik", "Suresh", "Neha", "Rekha", "Mohan", "Prasad", "Radha", "Charan")
M1 = c(87, 75, 83, 68, 62, 93, 85, 97, 78, 91, 93, 82, 100, 56, 51)
M2 = c(53, 80, 41, 97, 66, 70, 61, 91, 82, 39, 55, 93, 98, 74, 77)
M3 = c(66, 38, 44, 60, 50, 72, 78, 74, 97, 47, 33, 30, 96, 83, 53)
M4 = c(75, 41, 97, 68, 55, 32, 30, 60, 80, 91, 62, 57, 94, 78, 56)
M5 = c(39, 85, 53, 88, 51, 67, 94, 33, 37, 68, 72, 76, 100, 40, 88)
Stu_Result = data.frame(RegNo, Name, M1, M2, M3, M4, M5)
names(Stu_Result) = c('RegNo', 'Name', 'M1', 'M2', 'M3', 'M4', 'M5')
Stu_Result

# (a)	Calculate the Average of Marks in another vector and append it to the Stu_Result.

AverageScore = rowSums(Stu_Result[,3:7])/length(3:7)
Stu_Result$AverageScore = AverageScore
Stu_Result

# (b)	Then append another column as Grade with respect to the table given below. The resultant data frame name should be Updated_Stu_Result

# Grades = cut(Stu_Result$AverageScore, breaks=c(0,50,60,70,80,90,100),labels=c('F','P','C','B','A','S'))

j=1
Grades=0
for (i in Stu_Result$AverageScore){
  if(i>90){
    Grades[j]='S'
  }
  else if(i>=81 && i<=90){
    Grades[j]='A'
  }
  else if(i>=71 && i<=80){
    Grades[j]='B'
  }
  else if(i>=61 && i<=70){
    Grades[j]='C'
  }
  else if(i>=51 && i<=60){
    Grades[j]='P'
  }
  else{
    Grades[j]='F'
  }
  j=j+1
}
Updated_Stu_Result=Stu_Result
Updated_Stu_Result$Grades=Grades
Updated_Stu_Result


# (c)	Create another data frame named as New_Stu_Result with the attributes Reg.No, Name, M1, M2, M3, M4, M5, Average, and Grade.

New_Stu_Result = data.frame(RegNo, Name, M1, M2, M3, M4, M5, AverageScore, Grades)
names(New_Stu_Result) = c('RegNo', 'Name', 'M1', 'M2', 'M3', 'M4', 'M5', 'Average', 'Grade')
New_Stu_Result


# 3 Create a data frame 

Sepal.Length = c(5.4, 5.2, 5.8, 5.1, 6.3, 5.7, 6.7, 5.4, 6.7, 5.5)
Sepal.Width = c(3.4, 4.1, 2.6, 3.5, 2.5, 3.8, 3.1, 3.4, 3.1, 3.5)
Petal.Length = c(1.5, 1.5, 4, 1.4, 4.9, 1.7, 5.6, 1.7, 4.4, 1.3)
Petal.Width = c(0.4, 0.1, 1.2, 0.3, 1.5, 0.3, 2.4, 0.2, 1.4, 0.2)
Species = c('setosa', 'setosa', 'versicolor','setosa', 'versicolor', 'setosa', 'virginica', 'setosa', 'versicolor', 'setosa')

irisData = data.frame(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, Species)
names(irisData) = c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species')
irisData

# (a)	What are the mean and median of the column “Sepal.Length”?
print(paste("Mean of Sepal.Length = ", mean(irisData$Sepal.Length)))
print(paste("Median of Sepal.Length = ", median(irisData$Sepal.Length)))

# (b)	What is the mode of the column “Species”?
print(paste("Mode of Species = ", mode(irisData$Species)))

# (c)	What are standard deviation and variance of the column “Petal.Width”?
print(paste("Variance of Petal.Width = ", var(irisData$Petal.Width)))
print(paste("Standard Deviation of Petal.Width = ", sd(irisData$Petal.Width)))

# (d)	What is the normalized value of 2.5 in the column “Sepal.Width” using min-max normalization having new minimum value as 11 and new maximum value is 13.
# x' = (x - min(x)) / (max(x) - min(x))
print(paste("normalized value = ", (Sepal.Width[5] - min(11)) / (max(13) - min(11))))

# (e)	What is the normalized value of 2.5 in the column “Petal.Length” using z-score normalization?
irisData$Petal.Length
print("There is no 2.5 value in the column Petal.Length. Hence we cannot normalize the data.")
