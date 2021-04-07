# Foundations for Data Analytics LAB
# Slot : L33 + L34
# FDA LAB 7
# Author @Gudi Varaprasad - 19BCE7048
# Date : 04-04-2021
# 
#----------------------------------------------------------------------------------------

# 1)

itemType=c("Baby Food", "Cereal", "Office Supplies", "Fruits", "Office Supplies", 
           "Baby Food", "Household", "Vegetables", "Personal Care","Cereal",
           "Vegetables", "Clothes", "Clothes", "Household")

salesChannel=c("Offline", "Online", NA, "Online", "Offline", "Online", NA, 
               "Online", "Offline", "Online", "Online", "Offline", NA, "Offline")

orderPriority=c(1, 2, 3, 1, NA, 1, 3, 2, 1, 2, NA, 2, NA, 3)

unitsSold=c(9925, 2804, 1779, 8102, 5062, NA, 4187, 8082, 
             6070, NA, 124, 4168, 8263, 8974)

unitPrice=c(255.28, 205.7, NA, 9.33, 651.21, 255.28, 668.27, 154.06, 
             81.73, 205.7, 154.06, NA, 109.28, 668.27)

DF=data.frame(itemType, salesChannel, orderPriority, unitsSold, unitPrice)
DF


#1a
MissingSC=c(which(is.na(DF$salesChannel)))

value1=mfv(DF$salesChannel,na_rm = TRUE)

lenMissingSC=length(MissingSC)
for(x in 1:lenMissingSC){
  DF$salesChannel[MissingSC[x]]=value1
}
DF

#1b
MissingOP=c(which(is.na(DF$orderPriority)))

value2=mfv(DF$orderPriority,na_rm=TRUE)

lenMissingOP=length(MissingOP)
for(x2 in 1:lenMissingOP){
  DF$orderPriority[MissingOP[x2]]=value2[1]
}
DF

#1c
sortingUS=sort(DF$unitsSold)

value3=median(sortingUS)

missingUS=c(which(is.na(DF$unitsSold)))
lenMissingUS=length(missingUS)
for(x3 in 1:lenMissingUS){
  DF$unitsSold[missingUS[x3]]=value3
}
DF

#1d
x=mean(DF$unitPrice ,na.rm = TRUE)

missingUP=c(which(is.na(DF$unitPrice)))

lenMissingUP=length(missingUP)
for(x4 in 1:lenMissingUP){
  DF$unitPrice[missingUP[x4]]= x
}
DF



# 2 (a)
patt = function (n) {
  j = 0
  k = 0
  for (i in seq(1,n)) {
    if (i %% 2 != 0) {
      for (j in seq(k + 1,k + i)) {
        if(j==k+i) {
          cat(j)
        } else {
          cat(j,' * ')
        }
      }
      j = j + 1
      cat("\n")
      k = j
    } else {
      k = k + i - 1
      
      for (j in seq(k,k-i+1,by=-1)) {
        if(j==k-i+1) {
          cat(j)
        } else {
          cat(j,' * ')
        }
      }
      cat("\n")
    }
  }
}
n = as.integer(readline(prompt="Enter a number of rows : ")) 
patt(n)

# 2 (b)
M = matrix(c(0, 5, 6, -2, 4, -4, 0, 8, 1, 0, 9, 4, 7, 9, 2, 1, 7, 6, -8, 3, -5, 6, 7, 8, 9), nrow = 5, ncol = 5, byrow = TRUE)
M
for(i in 1:nrow(M)){
  for(j in 1:ncol(M)){
    temp=2
    flag=0
    var=M[i,j]
    if(var<0)
    {
      var=abs(var)
      for(k in seq(2,var-1)){
        if(var==2){
          flag=0
          break
        }
        else if(var%%k==0){
          flag=1
          break
        }
      }
      
    }
    if(flag==0){
      if(M[i,j]<0)
        print(M[i,j])
    } 
  }
}

# 2 c)

pf = function (n) {
  temp = 2
  flag = 0
  while (n != 1) {
    for (i in seq(2, temp - 1)) {
      if (temp == 2) {
        flag = 0
        break
      } else if (temp %% i == 0) {
        flag = 1
        break;
      }
    }
    if (flag == 0) {
      if (n %% temp == 0) {
        n = n / temp
        print(temp)
      } else
        temp = temp + 1
    } else {
      flag = 0
      temp = temp + 1
    }
  }
}
n = as.integer(readline(prompt = "Enter a number : "))
print(paste('Prime Factors of',n,'are : '))
pf(n)


# 3)
Name = c('Robin Hood', 'Arsene Wenger', 'Friar Tuck', 'Little John', 'Sam Alladryce', 
         'Dim Berabatov', 'Marry', 'Robert', 'Johanson', 'Lucy')

Department = c('HR', 'IT', 'HR', 'Account', 'IT', 'Account', 'IT',
               'HR', 'Excecutive', 'Excecutive')

DOJ = as.Date( c('02/07/2000', '03/09/2010', '04/07/2008', '05/08/2013',
                 '06/07/2000', '07/06/2019', '08/07/2020', '09/07/2003',
                 '10/07/2004', '11/07/2010'), format = "%d/%m/%Y")

Salary = c(200, 150, 270, 100, 350, 250, 340, 250, 150, 170)

EMP=data.frame(Name,Department,DOJ,Salary)
EMP

# 3 a)
YOE = floor(age_calc(EMP$DOJ, enddate = Sys.Date(), units = "years"))
Gender = c('M', 'M', 'M', 'M', 'M', 'F', 'F', 'M', 'M', 'F')
UEMP = cbind(EMP,Gender,YOE)
UEMP

# 3 b)
print(UEMP[UEMP$Gender == 'F' & UEMP$Department== 'IT'& UEMP$Salary>=300 ,])
