## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
