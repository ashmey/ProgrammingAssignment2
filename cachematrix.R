## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix())
## Matrix object is created with the help of the function to cache its inverse
  
makeCacheMatrix <- function(x = matrix()) {
  
inve <- NULL  
## set inve as NULL to hold the value of inverse matrix
set <- function(y) {
## define set function
  x <<- y
##value of matrix in parent environment
  inve <<- NULL
## reset inve to NULL
}
get <- function() x
## define the get fucntion
setinverse <- function(inverse) inve <<- inverse
## assigns value of inve in parent environment
getinverse <- function() inve
## get the value of inve
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

## Write a short comment describing this function
## followig function finds the inverse of matrix returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inve <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inve)
  }
  data <- x$get()
  inve <- solve(data, ...)
  x$setinverse(inve)
  inve
}
