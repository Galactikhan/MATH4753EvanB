####### Task 2 Rcode #########################
# Graphical interface calculations:
#
curve(dnorm(x, mean=0,sd=1),xlim=c(-3,7),ylab = "sd=1")
# In order to find the area between x=10 and 25
#  - seq defines desired x points
xcurve=seq(2,5,length=1000)
# For The Y part of the curve  we use the X points
#  and the data for the curve in a normal distribution
ycurve=dnorm(xcurve,mean=0,sd=1)
# Creates a Polygon and fills it bounded by the given
#   x & y curves
polygon(c(2,xcurve,5),c(0,ycurve,0),col="Red")
# Put in the text with the appropriate area
# Area
prob=1-pnorm(2,mean=0,sd=1)
prob=round(prob,1)
# Click to paste the text onto the graph
text(locator(1), paste("Area = ", prob, sep=""))
#
#
#
curve(dnorm(x, mean=4,sd=2),xlim=c(-10,10),ylab = "sd=2")
# In order to find the area between x=10 and 25
#  - seq defines desired x points
xcurve=seq(-1,5,length=1000)
# For The Y part of the curve  we use the X points
#  and the data for the curve in a normal distribution
ycurve=dnorm(xcurve,mean=4,sd=2)
# Creates a Polygon and fills it bounded by the given
#   x & y curves
polygon(c(-1,xcurve,5),c(0,ycurve,0),col="Red")
# Put in the text with the appropriate area
# Area
prob=pnorm(5,mean=4,sd=2)-pnorm(1,mean=4,sd=2)
prob=round(prob,2)
# Click to paste the text onto the graph
text(locator(1), paste("Area = ", prob, sep=""))
#
#
#
curve(dnorm(x, mean=10,sd=4),xlim=c(-10,20),ylab = "sd=2")
#
# In order to find the area between x=10 and 25
#  - seq defines desired x points
xcurve=seq(-10,10,length=1000)
# For The Y part of the curve  we use the X points
#  and the data for the curve in a normal distribution
ycurve=dnorm(xcurve,mean=10,sd=4)
# Creates a Polygon and fills it bounded by the given
#   x & y curves
polygon(c(-10,xcurve,10),c(0,ycurve,0),col="Red")
# Put in the text with the appropriate area
# Area
prob=pnorm(10,mean=10,sd=4)
prob=round(prob,4)

# Click to paste the text onto the graph
text(locator(1), paste("Area = ", prob, sep=""))
#
#
#
curve(dnorm(x, mean=-2,sd=1/2),xlim=c(-4,1),ylab = "sd=2")
# In order to find the area between x=10 and 25
#  - seq defines desired x points
xcurve=seq(-3,-2,length=1000)
# For The Y part of the curve  we use the X points
#  and the data for the curve in a normal distribution
ycurve=dnorm(xcurve,mean=-2,sd=1/2)
# Creates a Polygon and fills it bounded by the given
#   x & y curves
polygon(c(-3,xcurve,-2),c(0,ycurve,0),col="Red")
# Put in the text with the appropriate area
# Area
prob=pnorm(-2,mean=-2,sd=1/2)-pnorm(-3,mean=-2,sd=1/2)
prob=round(prob,1/2)
# Click to paste the text onto the graph
text(locator(1), paste("Area = ", prob, sep=""))

####### Task 3 Rcode ################################################
# Gamma ##
# Curve based of Gamma Distribution
curve(dgamma(x,shape=3,scale=2),xlim=c(2,5),ylim=c(0,1),col="Red",lwd=2,ylab="Gamma density", main="Probabilities")
# Text Click Paste
text(locator(1),paste("alpha=",1))
# Curve based of Gamma Distribution
curve(dgamma(x,shape=6,scale=3),xlim=c(1,4),ylim=c(0,1),add=TRUE,lwd=2)
# Text Click Paste
text(locator(1),paste("alpha=",3))
# Curve based of Gamma Distribution
curve(dgamma(x,shape=2,scale=4),xlim=c(3,6),ylim=c(0,1),add=TRUE, col="Blue",lwd=2)
# Text Click Paste
text(locator(1),paste("alpha=",5))


####### Task 4 Rcode ###############
curve(dchisq(x,df=1),xlim=c(-1,10),ylim=c(0,1),col="Red",lwd=2,ylab="Chisq density", main="df=1")


curve(dchisq(x,df=2),xlim=c(-1,10),ylim=c(0,1),col="Blue",lwd=2,ylab="Chisq density",main="df=2")
curve(dchisq(x,df=4),xlim=c(-1,10),ylim=c(0,1),col="Green",lwd=2,ylab="Chisq density", main="df=4")
curve(dchisq(x,df=20),xlim=c(0,40),ylim=c(0,1),col="Purple",lwd=2,ylab="Chisq density",main="df=20")



####################
# lab6.R Commented #
##############################################################
# Sets Layout for 4 graphs 2 on top 2 on bottom
layout(matrix(1:4, nr=2,nc=2))
# Shows the layout that was made, with numbers 1 through
#  4 to designate each
windows;layout.show(4)
#####################
# Plots a curve with X-limits -10 and 30, with a Normal distribution
#  -w/ mean = 10, Standard Dev. = 4
curve(dnorm(x, mean=10,sd=4),xlim=c(-10,30))
#  -w/ mean = 10, Standard Dev. = 8
curve(dnorm(x, mean=10,sd=8),xlim=c(-10,30))
#  -w/ mean = 5, Standard Dev. = 4
curve(dnorm(x, mean=5,sd=4),xlim=c(-10,30))
#  -w/ mean = 10, Standard Dev. = 2
curve(dnorm(x, mean=10,sd=2),xlim=c(-10,30))
################
#
#####################
# Plots a curve with X-limits -10 and 30, with a Normal distribution
#  -w/ mean = 10, Standard Dev. = 4
curve(dnorm(x, mean=10,sd=4),xlim=c(-10,30))
#
# In order to find the area between x=10 and 25
#  - seq defines desired x points
xcurve=seq(10,25,length=1000)
# For The Y part of the curve  we use the X points
#  and the data for the curve in a normal distribution
ycurve=dnorm(xcurve,mean=10,sd=4)
# Creates a Polygon and fills it bounded by the given
#   x & y curves
polygon(c(10,xcurve,25),c(0,ycurve,0),col="Red")
# Area based probability, this is where the inequality is defined
#   as the bounds to the polygon
prob=pnorm(25,mean=10,sd=4)-pnorm(10,mean=10,sd=4)
prob=round(prob,4)
#
# Uses mouse/click to add text of Area of probability
text(locator(1), paste("Area = ", prob, sep=""))
###############################################################
#
###############  Gamma ################
# Curve based of Gamma Distribution
curve(dgamma(x,shape=1,scale=1),xlim=c(0,10),ylim=c(0,1),col="Red",lwd=2,
ylab="Gamma density", main="Beta=1")
# Text Click Paste
text(locator(1),paste("alpha=",1))
# Curve based of Gamma Distribution
curve(dgamma(x,shape=3,scale=1),xlim=c(0,10),ylim=c(0,1),add=TRUE,lwd=2)
# Text Click Paste
text(locator(1),paste("alpha=",3))
# Curve based of Gamma Distribution
curve(dgamma(x,shape=5,scale=1),xlim=c(0,10),ylim=c(0,1),add=TRUE, col="Blue",lwd=2)
# Text Click Paste
text(locator(1),paste("alpha=",5))

################### Chi -sq ######### alpha = df/2, beta=2
# Curve Based off Chi-Square distribution
curve(dchisq(x,df=2),xlim=c(0,10),ylim=c(0,1),col="Red",lwd=2,
ylab="Chisq density", main="df=2,5")
# Text Click Paste
text(locator(1),paste("df=",2))

curve(dchisq(x,df=5),xlim=c(0,10),ylim=c(0,1),col="Blue",lwd=2,
ylab="Chisq density",add=TRUE)

## Beta
# Curve Based off Beta Distribution
curve(dbeta(x,shape1=2,shape2=3),xlim=c(0,1))

#P( 0.2<=Y<=0.6)
