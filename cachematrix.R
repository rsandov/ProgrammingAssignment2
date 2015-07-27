## [Put comments here that describe what your functions do]
## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- solve()x
  setinverse <- function(mean) m <<- mean  #Obtain the mean of the matrix
  getinverse <- function() m
  list( set = set, get = get, ##  Set the name of the expresions
        setinverse = setinverse,
        getinverse = getinverse)
}


## The purpose of this function is to compute the inverse of the matrix above

cacheSolve <- function(x, ...) {
  m <- x$getinverse()   ## get the inverse of the matrix
  if(!is.null(m)) {   ## Return a matrix that is the inverse of 'x
    message ("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
