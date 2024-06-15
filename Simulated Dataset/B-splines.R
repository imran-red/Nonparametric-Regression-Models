library(splines)

#Creating B-splines
B <- bs(x, degree=3, intercept = TRUE, Boundary.knots=c(1,2))
B

b.model <- lm(y ~ B-1)
plot(x, y, title(main = "B-splines on Simulated Dataset"))
lines(x, fitted(b.model),  col="red", lwd=2,lty=2)
lines(x, fx, lwd=2,)
legend("topright",legend=c("f(x)", "regression spline"), lty=1:2, col=c('black','red'),lwd = 2)
