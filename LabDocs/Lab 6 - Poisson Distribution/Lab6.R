#
# Hands on exercise on R
# Day 6 - Poisson Distribution
# Author @Gudi Varaprasad - 19BCE7048
# Date : 24-11-2020
# 
#----------------------------------------------------------------------------

# (1) During a laboratory experiment, the average number of radioactive particles passing
# through a counter in 1 millisecond is 4. What is the probability that 6 particles enter the
# counter in a given millisecond?

# lambda = 4, x=6
# dpois(x, lambda, log = FALSE)
dpois(6, 4, log = FALSE)


## (2) In a certain industrial facility, accidents occur infrequently. It is known that the
# probability of an accident on any given day is 0.05 and accidents are independent of
# each other.
# (a) What is the probability that in any given period of 4000 days there will be an
# accident on one day?

# lambda = 4000*0.05 = 200
dpois(1, 200, log = FALSE)

# (b) What is the probability that there are at most three days with an accident?
# P(x<=3) ppois(q, lambda, lower.tail = TRUE, log.p = FALSE)
ppois(3, 200, lower.tail = TRUE, log.p = FALSE)


## (3) In a manufacturing process where glass products are made, defects or bubbles occur,
# occasionally rendering the piece undesirable for marketing. It is known that, on average,
# 1 in every 1000 of these items produced has one or more bubbles. What is the
# probability that a random sample of 8000 will yield fewer than 7 items possessing bubbles?

# p = 1/1000 = 0.001 , n=8000 , mean = 8 , find P(X < 7) = P(X <= 6)
ppois(6, 8, lower.tail = TRUE, log.p = FALSE)


## (4) On average, 3 traffic accidents per month occur at a certain intersection. What is the
# probability that in any given month at this intersection
# (a) exactly 5 accidents will occur?

# mean = 3
dpois(5, 3, log = FALSE)

# (b) fewer than 3 accidents will occur?
# find P(X < 3) = P(X <= 2)
ppois(2, 3, lower.tail = TRUE, log.p = FALSE)

# (c) at least 2 accidents will occur?
# P(X >= 2) = 1 - P(X < 2) = 1 - P(X <= 1)
1 - ppois(1, 3, lower.tail = TRUE, log.p = FALSE)


## (5) Plot the graph for Q. No. 2 and 4 for Random Variable against Probability Distribution function.

windows()
par(mfrow = c(1,2)) # single window
q2 = 2.767793e-85 #question 2
plot(1,q2,xlab="Random Variable",ylab="Probability", main="Question 2")

q4 = 0.1008188 #question 4
plot(5,q4,xlab="Random Variable",ylab="Probability", main="Question 4")


## (6) A company makes electric motors. The probability an electric motor is defective is
# 0.01. What is the probability that a sample of 300 electric motors will contain x
# defective motors, where 5≤x<8?

# lambda = 300*0.01 = 3
sum(dpois(5:7, 3, log = FALSE))
