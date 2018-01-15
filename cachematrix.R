## Cache Inverse of A Matrix

## Takes an invertable matrix as an argument


makeCacheMatrix <- function(x = matrix()) {

  set <- function(y) {
  }
  get <- function() x
  setinverse <- function(inverse) MatInv <<- inverse
  getinverse <- function() MatInv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Returns inverse of a matrix from a chached value or computation
## of a new inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Matinv <- x$getinverse()
  if(!is.null(Matinv)) {
    message("getting cached data")
    return(Matinv)
  }
  data <- x$get()
  Matinv <- solve(data, ...)
  x$setinverse(Matinv)
  Matinv
}
