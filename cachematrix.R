## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL ## Initialize m
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x ## Gets the matrix
  setinverse <- function(solve) m <<- solve ## Assigns the inverse
  getinverse <- function() m ## Returns m value
  ## Returns a list with all the functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse() ## gets x value
  if(!is.null(m)) {
    ## If m has data, returns it
    message("getting cached data")
    return(m)
  }
  ## If m is empty: Get the matrix, calculate, cache and return the inverse
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
