## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    cached_inv <- NULL
    set <- function(y)
    {
        x <<- y
        cached_inv <<- NULL
    }
    get <- function() x
    set_cached_inv <- function(inv) cached_inv <<- inv
    get_cached_inv <- function() cached_inv
    list(set = set, get = get,
         set_cached_inv = set_cached_inv,
         get_cached_inv = get_cached_inv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if(is.null(x$get_cached_inv()))
  {
    data <- x$get()
    x$set_cached_inv(solve(data))
  }
  x$get_cached_inv()
}
