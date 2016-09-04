makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
    set<- function(y)
      {
        x <<- y
        m <<- NULL
      }
    get <- function() 
        {
           x
        }
    
  cacheInv <- function(solve)
        {
          cache <<- solve
        }
  
  getInv <- function()  cache

  list(set = set, get = get, cacheInv = cacheInv, getInv = getInv)
}

 

cacheSolve <- function(y, ...) 
  {
             inverse <- y$getInv()
             m <- y$get()
             inverse <- solve(m)
             y$cacheInv(inverse)
           
               inverse
  }
