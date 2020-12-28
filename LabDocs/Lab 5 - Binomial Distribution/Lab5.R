#
# Hands on exercise on R
# Day 5 - Binomial Distribution
# Author @Gudi Varaprasad - 19BCE7048
# Date : 23-11-2020
# 
#----------------------------------------------------------------------------

# a) Find the probability of getting exactly 3 ready terminals
dbinom(x = 3, size =5, prob = 0.95)

# b) Find all the probabilities.
x<- 0:5
dbinom(x, size= 5, prob =0.95)

# 2
x<- 0:20
dbinom(x, 20, 0.2)

# 3
x<- 0:100
dbinom(x,100, 0.01)


# 4 Plot all of the above problems in a single window for random variable and respective Probability distribution
windows()
par(mfrow = c(1,3)) # single window

x<-0:5 #question 1
plot(x, dbinom(x, size = 5, prob = 0.95),
     xlab = "Number of Ready Terminals",
     ylab = "P(X = x)",
     main = "Ready Terminals, n = 5, p = 0.95")


x<-0:20 #question 2
plot(x, dbinom(x, size = 20, prob = 0.2),
     xlab = "Number of Defectives",
     ylab = "P(X = x)",
     main = "Defectives, n = 20, p = 0.2")


x<-0:100 #question 3
plot(x, dbinom(x, size = 100, prob = 0.01),
     xlab = "Number of Bits in Error",
     ylab = "P(X = x)",
     main = "Bits in Error, n = 100, p = 0.01")


# 5

# P(X <= 3): n = 5, p = 0.95
  pbinom(3, 5, 0.95)
  
# P(X > 3):
  1-pbinom(3, 5, 0.95)
  
  
# P(X <= 4): n = 20, p = 0.2
  pbinom (4, size = 20, prob =0.2)

# P(X > 4) = 1- P(X <= 4 )
  1- pbinom(4, size = 20, prob = 0.2)
  
  x<-0:20
  prob<- pbinom(x, size = 20, prob=0.2)
  
# round to 4 decimal places:
  round(prob, 4) 
  
# The probability that a patient recover from a rare blood disease is 0.4. If 15
# people are known to have contracted this disease, what is the probability that

  # (a) at least 10 survive,  p = 0.4 , q = 1-0.4 = 0.6; P(X >= 10):
  1-pbinom(10,15,0.4) + dbinom(x = 10, size =15, prob = 0.4)
  
  # (b) from 3 to 8 survive
  pbinom(8,15,0.4) - pbinom(3,15,0.4) + dbinom(3,15,0.4)
  
  
  # (c) exactly 5 survive?
  dbinom(x = 5, size =15, prob = 0.4)
  
# Write your own function for Binomial Distribution and cumulative binomial distribution.

# for Binomial Distribution  
binomialfunc = function(x,n,p) {
    bprob = choose(n,x)*(p^x)*((1-p)^(n-x))
    return(bprob)
}
binomialfunc(7,17,0.3) #example

# cumulative binomial distribution function
cbinomialfunc = function(x,n,p) {
  cbprob = sum(choose(n,x)*(p^x)*((1-p)^(n-x)))
  return(cbprob)
}
cbinomialfunc(1:7,17,0.55) #example


# GVP