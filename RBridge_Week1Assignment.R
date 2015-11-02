# R Bridge - Week 1 Assignment by Krystyna Kopacki Fall2015

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
# Find x for ax^2+bx+c=0 where x=(-b +/-sqrt(b^2-4ac))/(2a)

input_file <- "c:/R_practice/assign1q3.csv"
df <- read.table(file = input_file, header = TRUE, sep = ",")
rows <- nrow(df)   # number of rows of data
#process each row of values
for(i in 1:rows)
{
    a <- df[i,1]
    b <- df[i,2]
    c <- df[i,3]
    print("---------")
    my_nums <- c(a,b,c)
    print(my_nums)
    test1 <- b*b - 4*a*c
    # test1 must be positive or zero for sqrt function
    # a value must be non-zero for divisor
    if(test1 >= 0 && a != 0)
    {   x1 <- (-b + sqrt(test1)) / (2*a)
        x2 <- (-b - sqrt(test1)) / (2*a)
        print("solution1")
        print(x1)
        print("solution2")
        print(x2)
    } else
        {
        #print error msg    
        print("no solution for these values")
        }
} 
#results:
#[1] "---------"
#[1] 1 2 3
#[1] "no solution for these values"
#[1] "---------"
#[1] 4 5 6
#[1] "no solution for these values"
#[1] "---------"
#[1] 7 8 9
#[1] "no solution for these values"
#[1] "---------"
#[1] 9 1 0
#[1] "solution1"
#[1] 0
#[1] "solution2"
#[1] -0.1111111
#[1] "---------"
#[1] 0 1 1
#[1] "no solution for these values"
#[1] "---------"
#[1] 5 8 1
#[1] "solution1"
#[1] -0.136675
#[1] "solution2"
#[1] -1.463325
