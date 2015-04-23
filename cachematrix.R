## Put comments here that give an overall description of what your
## functions do

## Creates a special Matrix. 

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Inverse of the special matrix, from Cache if already calculated!
cacheSolve <- function(x=matrix(), ...) {

        ## Return a matrix that is the inverse of 'x'

    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
