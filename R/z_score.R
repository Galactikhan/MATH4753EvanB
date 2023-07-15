#' @title Z-score
#'
#' @param x a quantitative vector
#'
#' @return Z-score for a data setx, the squared values
#' @export
#'
#' @examples
#' z_score(x=c(1,2,3,1,2,3,1,2,3,6,6,8,9))
z_score <- function(x) {
  z <- (x-mean(x))/sd(x)
  z
}
