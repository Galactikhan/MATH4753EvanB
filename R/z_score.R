#' @title Z-score
#'
#' @param x a quantitative vector
#'
#' @return Z-score for a data setx, the squared values
#' @export
#'
#' @examples
#' z.score(x=c(1,2,3,1,2,3,1,2,3,6,6,8,9))
z.score <- function(x) {
  ## Z Score Function ##
  z <- (x-mean(x))/sd(x)
  # Find the z values greater than 3 in size
  outlier.z.3 <- z[abs(z)>3]
  # Find the I values corresponding to these z values
  outlier.3 <- x[abs(z)>3]
  # Find the values of z that are possible outliers
  poss.outlier.z <- z[abs(z)>=2 & abs(z)<=3]
  #Find the values of I which are possible outliers
  poss.outlier <- x[abs(z)>=2 & abs(z)<=3]
  ## Output##
  Results <- data.entry(z,outlier.z.3,outlier.3,poss.outlier.z,poss.outlier)
  return(Results)
}
