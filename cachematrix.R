##The function creates a special Matrix that can cache its inverse
##The function computes the inverse of the special matrix retuened by makeCacheMatrix above.


makeCacheMatrix <- function(y = matrix()) {
                i <- NULL
                set <- function(z){
                        y <<- z
                        i <<- NULL
                }
                get <- function()y
                setInverse <- function(inverse) i <<- inverse
                getInverse <- function() i 
                list(set = set, get = get, 
                     setInverse = setInverse, 
                     getInverse = getInverse)
        }
        
        #The sencond function computes the inverse of the spatical,
        #matrix returned by makeCackeMatrix
        
        cacheSolve <- function(y, ...) {
                ## Return a matrix that is the inverse of 'x'
                i <- x$getInverse()
                if(!is.null(i)){
                        message("getting cached data")
                        return(i)
                }
                mat <- x$get()
                i <- solve(mat,...)
                y$setInverse(i)
                i
        }



