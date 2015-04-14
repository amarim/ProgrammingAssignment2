## Put comments here that give an overall description of what your
## functions do

## This function create a list with property of calculate a matrix inverse, get e set

makecachematrix <- function(m = matrix()) {
 i <- NULL
  
  set <- function(y){
    m <<- y
    i <<- NULL
  } 
  get <- function() m
  
  setInverse <- function(solve) i <<- solve
  getInverse <- function() i
  
  list(set = set, get = get, setInverse = setInverse,
       getInverse = getInverse)
}


## This function receive a list with a matrix and return a inverse matrix

cacheSolve <- function(m, ...) {
  i <- m$getInverse()
  
  if(!is.null(i)){
    message("Inverse matrix already calculated")
    return(i)
  }
  data <- m$get()
  i <- solve(data, ...)
  m$setInverse(i)
  i
}
