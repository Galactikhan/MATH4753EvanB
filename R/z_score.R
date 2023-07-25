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
  z <- (x-mean(x))/sd(x)
  z
  # Find the z values greater than 3 in size
  z[abs(z)>3]

  # Find the I values corresponding to these z values
  x[abs(z)>3]

  # Find the values of z that are possible outliers
  z[abs(z)>=2 & abs(z)<=3]

  #Find the values of I which are possible outliers
  x[abs(z)>=2 & abs(z)<=3]
}
