# R Bridge - Week 1 Assignment

# 1. Write a loop that caculates 12-factorial
#
my_number <- 12
factorial <- 1
for (i in 1:my_number)
{
    factorial <- factorial * i 
}
print(factorial)
#answer: [1] 479001600

# 2. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
#
nvector <- NULL
i <- 20
while (i < 51)
{  nvector <- c(nvector,i)
i <- i + 5
}
print(nvector)
#answer: [1] 20 25 30 35 40 45 50

# 3. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
