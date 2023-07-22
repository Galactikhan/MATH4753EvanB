#' Normal Curve Probability Distribution
#'
#' @param mu
#' @param sigma
#' @param a
#'
#' @return A graph representing probabiltiy through area
#' @export
#'
#' @examples
#' myncurve(mu=4, sigma=2, a=5)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma),col="purple")
  # Create Curves
  xcurve=seq(-100,a,length=1000)
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)
  # Create Polygon Volume
  polygon(c(-100,xcurve,a),c(0,ycurve,0),col="cyan")
  # Probability
  prob=pnorm(a,mean=mu,sd=sigma)
  prob=round(prob,4)
  text(x=a,y=.05, paste("Area = ", prob, sep=""))
}
