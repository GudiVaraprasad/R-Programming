# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 6
# Author @Gudi Varaprasad - 19BCE7048
# Date : 02-03-2021
# 
#-------------------------------------------------------------------------------

# Q1. Pattern

n = as.integer(readline(prompt="Enter a number of rows : ")) 
temp=1
for (i in 1:n) {
  for (j in 1:i) {
    cat(temp)
    if (i != j) 
      cat(' * ')
    temp = temp+1
  }
  cat("\n")
}

# Q2. Series

n = as.integer(readline(prompt = "Enter a number: "))

summ = 0
myFactorial = function(i) {
  facto = 1
  for (j in 1: i) {
    facto = facto * j
  }
  return(facto)
}

for (i in 1:n) {
  summ = summ + (i/myFactorial(i))
}

print(paste(" Sum of series = ", summ))


# Q3. 

Sex = c('male', 'female', 'female', 'female', 'male', 'male', 'male',
        'male', 'female', 'female', 'female', 'female')
Age = c(22, 38, 26, 35, 35, 80, 54, 2, 27, 14, 4, 58)

dataframe1 = data.frame(Sex,Age)
dataframe1

j=1
Age=0
for (i in dataframe1$Age){
  if(i>=66 && i<=99){
    Age[j]='Elderly'
  }
  else if(i>=41 && i<=65){
    Age[j]='Adult'
  }
  else if(i>=19 && i<=40){
    Age[j]='Young'
  }
  else if(i>=3 && i<=17){
    Age[j]='Child'
  }
  else if(i>=0 && i<=2){
    Age[j]='Toddler/Baby'
  }
  j=j+1
}

dataframe2 = dataframe1
dataframe2$Age=Age
dataframe2


# Q4. 

gender = c('male', 'female', 'male', 'female', 'female', 
           'male', 'female', 'male', 'female', 'female')

age = c(40, 57, 66, 61, 48, 25, 49, 52, 57, 35)

degree = c('MA', 'BSCS', 'BE', 'BSCS', 'MA', 'MA', 
           'BE', 'ME', 'MA', 'MA')

D1 = data.frame(gender, age, degree)
D1

# i)

ageOrder = order(D1$age)
D2 = D1[order(D1$age),]
D2
write.csv(D2, file="D2.csv")

# ii)

D3 = subset(D2,D2$age<50)
D3

# iii)

genderOrder = order(D3$gender)
genderOrder
D4 = D3[order(D3$gender),]
D4
write.csv(D4, file="D4.csv")

# iv)

display = subset(D4,D4$degree=='MA' & D4$gender=='female')
display


