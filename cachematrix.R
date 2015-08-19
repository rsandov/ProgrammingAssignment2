## [Put comments here that describe what your functions do]
## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix.

makeCacheMatrix <- function(x = matrix()) {
        ## inverted matrix object
        m_inv <- NULL
        
        ## set the value of the matrix
        set <- function(y) {
                x <<- y
                m_inv <<- NULL
        }
        ## retrieve the value of the matrix previously defined
        get <- function() x
        
        setinverted <- function(inverted) m_inv <<- inverted
        getinverted <- function() m_inv
        
        list(set = set, get = get, setinverted = setinverted,
             getinverted = getinverted)
}

