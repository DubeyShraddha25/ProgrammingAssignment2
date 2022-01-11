## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# A pair of functions that cache the mean of a matrix
## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
 ## Initialize the inverse property
  m <- NULL
## Method to set the matrix
set <- function(y) {
  x <<- y
  m<<- NULL
}
## Method the get the matrix
get <- function() x
setmean <- function(mean) m <<- mean
  
## Method to get the mean of the matrix
getmean <- function() m
## Return a list of the methods
list(set = set, get = get,
     setmean = setmean,
     getmean = getmean)

}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m<- x$getmean()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
 ## Get the matrix from our object  
data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
  }
        ## Return a matrix that is the inverse of 'x'
}
