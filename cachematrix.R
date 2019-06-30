## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##makeCacheMatrix will create a special vector, which is really a list containing
  ##a function to 
  ## set the value of the vector
  ##get the value of the vector
  ##set the inversal matrix
  ##get the inversal matrix
  
      mr<-NULL
      set<-function(y){
          x<<-y      ##use <<- in order to let x and mr stores in upper namespace
          mr<<-NULL
      }
        
      get<-function() x  ## just simply return x
      setinverse<- function(inversex) mr<<- inversex 
      getinverse<-function() mr
      list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
  
      
  }

  



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m<- x$getinverse()   ##try to obtain inverse matrix from mr
      if(!is.null(m)){      ##if the inverse matrix exist, then take it from memory
          message("getting cached inverse matrix")
          return(m)         ##here use return to return mr and exit the function
      }
      data<- x$get()        ##if inverse matrix doesn't exist, get orignial material matrix
      m<- solve(data,...)  ##use solve to get the inverse matrix 
      x$setinverse(m)      ##put the value into mr
}
