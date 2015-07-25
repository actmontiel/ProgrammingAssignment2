## We are going to store the inverse matrix with makeCacheMatrix and then get the matrix with cacheSolve

## 1.Set the value of the matrix
## 2.Get the value of the matrix
## 3.Set the value of the inverse matrix
## 4.Get the value of the inverse matrix

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


## Check if the inverse matrix has been already computed or not an then shows the inverse matrix

cacheSolve <- function(x, ...) {
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
