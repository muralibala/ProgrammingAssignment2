## Put comments here that give an overall description of what your
## functions do


##cache the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y;
    inv <<- NULL;
  }
  get <- function() return(x);
  setinv <- function(inverse) inv <<- inverse;
  getinv <- function() return(inv);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## Write a short comment describing this function
## function to compute the inverse
## Look for data in the cache.
## if not found setup cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  
  ## check inv object for cache data.
  if(!is.null(inv)) {
    message("Found cached obejct")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  return(inv)
}

