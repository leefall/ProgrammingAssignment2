## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inversed.Matrix <- NULL   ##set value of the inversed matrix as null
  set <- function(y) {
    x <<- y
    Inversed.Matrix <<- NULL
  }
  get <- function() x #get inversed value
  setinverse<- function(solve) Cachedinverse <<-solve # calculate inver se of via the solve function
  getinverse <- function() Inversed.Matrix# get inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  Inversed.Matrix<-x$getinverse() ## Return a matrix that is the inverse of 'x'
  if(!is.null(Inversed.Matrix)){##check existence of inverse matrix
    return(Inversed.Matrix)
  }
  Original<- x$get()# if not exist, calculate it
  Inversed.Matrix<-solve(Original,...)#
  x$setinverse(Inversed.Matrix)
  Inversed.Matrix  
          
}
