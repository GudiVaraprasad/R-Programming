#
# Hands on exercise on R
# Day 8 - z-Test
# Author @Gudi Varaprasad - 19BCE7048
# Date : 30-11-2020
# 
#----------------------------------------------------------------------------

# 1 H0: Mean=140 H1: Mean!=140(two tailed)  here alpha=0.05

Mean=140
stdv=20
n=55
alpha=0.05
data=c(120,115,94,118,111,102,102,131,105,107,115,139,115,113,114,105,115,134,109,109,93,118,109,106,125,150,142,119,127,141,149,144,142,149,161,143,140,148,149,141,146,159,152,135,134,161,130,125,141,148,153,145,137,147,175)
X=mean(data)

Z=sqrt(n)*(X-Mean)/stdv
print(Z)

pValue=2*(1-pnorm(abs(Z))) # two tailed
print(pValue)

if(pValue<=alpha)
{
  print("Ho is rejected and H1 is accepted") 
}else {
  print("H0 is accepted and H1 is rejected")
}


#2  H0:coin is fair, Mean=0.5  H1: Mean!=0.5 (two tailed) here alpha=0.05

Mean=0.5
n=100
stdv=sqrt(n*0.5*0.5)
X=0.43
alpha=0.05

Z=sqrt(n)*(X-Mean)/stdv
print(Z)

pValue=2*(1-pnorm(abs(Z))) # two tailed
print(pValue)

if(pValue<=alpha)
{
  print("Ho is rejected and H1 is accepted") 
}else {
  print("H0 is accepted and H1 is rejected")
}


#3 HO:Mean=8  H1: Mean!=8 (two tailed) here alpha=0.01

Mean=8
n=50
stdv=0.5
X=7.8
alpha=0.01

Z=sqrt(n)*(X-Mean)/stdv
print(Z)

pValue=2*(1-pnorm(abs(Z))) # two tailed
print(pValue)

if(pValue<=alpha)
{
  print("Ho is rejected and H1 is accepted") 
}else {
  print("H0 is accepted and H1 is rejected")
}