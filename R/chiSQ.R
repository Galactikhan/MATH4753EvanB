mychisim <- function(iter = 1000, n = 10){
  
  mat <- matrix(data=NA, nrow = n, ncol = iter, byrow=TRUE)
  
  for(i in 1:iter){
    mat[,i] <- rnorm(n = n,mean = 0,sd = 1)^2
    
  }
  
  stat <- apply(mat,2,sum)
  
  h <- hist(stat, plot=FALSE)
  
  dd <- h$density
  cll <- dd/max(dd)
  
  hist(stat, freq = FALSE, col = rgb(0,0,cll))
  
  curve(dnorm(x, mean = n, sd = sqrt(2*n)),add=TRUE,lwd = 2, col= "Red")
  
}
graphics.off()

mychisim(itr=10000, n = 100)

