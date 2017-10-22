# As a part of Assignment, a special function has been built to compute the inverse of the matrix returned by the function MatrixCache
InvCacheSolve <- function(x, ...) {
  inverse <- x$getInv()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$getInv()
  inverse <- solve(data)
  x$setInv(inverse)
  inverse      
}

# As a part of Assignment, a special function has been created to create matrix to cache inverse.

MatrixCache <- function(x = matrix()) {
  invMatrix <- NULL
  setMatrix <- function(y){
    x <<- y
    invMatrix <<- NULL
  }
  getMatrix <- function() x
  setInv <- function(solveMatrix) inv <<- solveMatrix
  getInv <- function() inv
  list(setMatrix = setMatrix, getMatrix = getMatrix, setInv = setInv, getInv = getInv)
}