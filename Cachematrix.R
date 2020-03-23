# Peer-graded-Assignment-2
## create the matrix, get and set the values and get the inverse
makeCacheMatrix <- function(x = matrix()) {
    
    # set the value of the matrix
    m <- NULL
    set <- function(y){
        #create system wide variable
        x <<- y
        m <<- NULL
    }
    
    # get the value of the matrix
    get <- function() x
    
    # set the value of the inverse of the matrix
    setinv <- function(solve) m <<- solve
    
    # get the value of the inverse of the matrix
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}
## Write a short comment describing this function
## Return a matrix that is the inverse of x. Uses the cached data if available 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
}
#check if the cached data is avaliable 
m <- x$getinv()
if(!is.null(m)) {
    message("Cached data in progress")
    return(m)
}
# if not; creat it and set the inverse of x
data <- x$get()
m <- solve(data, ...)
x$setinv(m)
m
} 