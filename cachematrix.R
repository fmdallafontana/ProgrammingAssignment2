## There are cases in programming that When you want to calculate the inverse of a matrix you don't do it just once. In these cases may be useful to cache the result in case you'll need it after, and so reduce  time-consuming computations.
## The functions described below are used to create a special object that stores a matrix and cache's its inverse.

## Function 1: makeVector
# This function creates a special "vector", which is really a list containing a function to:
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
