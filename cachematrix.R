## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set, get, setanswer and getanswer for matrix

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y){
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setanswer <- function(answer) a <<- answer
        getanswer <- function() a 
        list(set = set, get = get,
             setanswer = setanswer,
             getanswer = getanswer)
}


## Write a short comment describing this function
## if answer is not chached, will solve matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <- x$getanswer
        if(!is.null(a)){
                message("getting cached data")
                return(a)
        }
        data <- a$get()
        a <- solve(data)
        x$setansewr(a)
        a
}
