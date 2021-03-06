## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This creeates a list object from the matrix that can now be called into the cacheSolve function
makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set <- function(y){
                x<<-y
                m<<-NULL
        }
        get <- function() x
        
        setinverse <- function(solve) m <<- solve
        
        getinverse <- function(){ m}

        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## This function checks if the inverse has already been taken for the given matrix and then returns the cached
## inverse or then calculates the invers

cacheSolve <- function(x, ...) {

                
                m <- x$getinverse()
                
                if(!is.null(m)){
                        message("getting cached data")
                        return(m)
                }
                
                data <- x$get()
                m <- solve(data,...)
                
                x$setinverse(m)
                
                m
        
}
