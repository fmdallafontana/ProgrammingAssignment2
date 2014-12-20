## There are cases in programming that when you want to calculate the inverse of a 
# specific matrix you don't have to do it just once. In these cases it may be useful 
# to cache the result in case you'll need it after, and so reduce time-consuming computations.
# The functions described below are used to create a special object that stores a matrix 
# and cache's its inverse.

## Function 1: makeCacheMatrix
# This function creates a special "vector", which is really a list containing a function to:
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y) {
          x <<- y
          inv <<- NULL
     }
     get <- function() x
     setinverse <- function(inverse) inv <<- inverse
     getinverse <- function() inv
     list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Function 2: cacheSolve
# The following function calculates the inverse of the list created with the above 
# function. It first checks to see if the inverse has already been calculated. If so, 
# it gets the inverse from the cache and skips the computation. Otherwise, it calculates 
# the inverse of the data and sets the value of the inverse in the cache via the setinverse 
# function.

cacheSolve <- function(x = matrix(), ...) {
     inv <- x$getinverse()
     if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
     }
     data <- x$get()
     inv <- solve(data, ...)
     x$setinverse(inv)
     inv
}
