#
# Hands on exercise on R
# Day 9 - T-Test
# Author @Gudi Varaprasad - 19BCE7048
# Date : 01-12-2020
# 
#----------------------------------------------------------------------------

# 1 H0: Mean=0.3 H1: Mean>0.3(right tailed)  here alpha=0.05

x<-c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)

# t.test(x,y=NULL,alternative=c(“two.sided”,”less”,”greater”), mu=0, paired=FALSE, var.equal=FALSE, conf.level=0.95)

t.test(x,alternative="greater",mu = 0.3, paired = FALSE, var.equal =FALSE,conf.level = 0.95)

p=0.02927 #obtained from t test

if(p<=0.05)
{
 print("Ho is rejected and H1 is accepted") 
}else {
  print("H0 is accepted and H1 is rejected")
}


# 2  H0: Mean=75 H1: Mean!=75 (two tailed)  here alpha=0.95

x<-c(65, 78, 88, 55, 48, 95, 66, 57, 79, 81)
t.test(x,alternative="two.sided",mu =75, paired = FALSE, var.equal = FALSE,conf.level = 0.05)

p=0.4537  #obtained from t test

if(p<=0.95)
{
  print("Ho is rejected and H1 is accepted") 
}else {
  print("H0 is accepted and H1 is rejected")
}


# 3 H0: MeanA-MeanB=0 H1: MeanA-MeanB!=0 (two tailed)  here alpha=0.05

A<-c(175, 168, 168, 190, 156, 181, 182, 175, 174, 179)
B<-c(185, 169, 173, 173, 188, 186, 175, 174, 179, 180)
t.test(A,B,alternative = "two.sided",mu = 0, paired = FALSE, var.equal= FALSE,conf.level =0.95)

p=0.3576  #obtained from t test

if(p<=0.05)
{
  print("Ho is rejected and H1 is accepted") 
}else {
  print("H0 is accepted and H1 is rejected")
}
