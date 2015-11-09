# R Bridge - Week 2 Assignment by Krystyna Kopacki Fall2015
#
# Write two functions.  These functions should take a numeric vector as 
# input, and determine the mean and the median from the values in the vector.
# The following function are created under an assumption that there are 
# no non-numeric values present in the vector

find.mean <- function(c)
{
   l <- length(c)
   total <- 0
   if (l > 0) {
      for (i in 1:l)
      { total <- total + vec[i]}
      answer <- total / l
   }
   else {
      answer <- "No values present to calculate MEAN"
   }
 return (answer)  
}
# results with various vectors:
# > vec <- c(1,2,3,4)
# > find.mean(vec)
# [1] 2.5
# > vec <- c(9,1,8,2,20,20)
# > find.mean(vec)
# [1] 10
#> vec <- c()
#> find.mean(vec)
#[1] "No values present to calculate MEAN"


find.median <- function(c)
{
   l <- length(c)
   if ( l == 0 )
   {
      answer <- "No values present to calculate MEDIAN"
   }
   else 
      {
      c <- sort(c)
      if ( l == 1)
         {  # only one number in vector
            answer <- c[1]
       }
       else if ( l %% 2 == 1)
         { #odd number elements in vector
            middle <- (l + 1 ) / 2
          answer <- c[middle]
         }
         else 
            { # even number of elements in vector
             middle <- l / 2
            # take two middle elements
            answer <- (c[middle] + c[middle + 1]) / 2
            }
      }
   return(answer)        
}
#k1 <- c(1,4,9)
# > find.median(k1)
# [1] 4
#> k1 <- c()
#> find.median(k1)
#[1] "No values present to calculate MEDIAN"
