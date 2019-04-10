## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## R Programming Coursera Week 3 Assignment
## makeCacheMatrix: Function created to cache the inverse of the "matrix"

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL
        set <- function(y){
                x <<- y
                invMatrix <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) invMatrix <<- inverse
        getInverse <- function() invMatrix
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
        

}


## Write a short comment describing this function
## cacheSolve: Function to calculate the inverse of the "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMatrix <- x$getInverse()
        if (!is.null(invMatrix)){
                message("Getting cached Matrix")
                return(invMatrix)
        }
        Matrix_data <- x$get()
        invMatrix <- solve(Matrix_data, ...)
        x$setInverse(invMatrix)
        return(invMatrix)
        
        
}
