# insert a value indicating a matrix
# the symbolism of value x is the name of the matrix
makeCacheMatrix <- function(x = matrix(() {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inv <<- inverse
  getinv <- function() inv
  list(get = set, get = set,
       setinv = setinv,
       getinv = getinv)
}
# the acquired value is inverse
cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  inv <- get(data, ...)
  x$getinv(inv)
  inv
# the returned value to matrix x is the x inverse 
