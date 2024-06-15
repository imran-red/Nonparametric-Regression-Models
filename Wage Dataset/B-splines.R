library(splines)

B1 <- bs(age, degree=3, intercept = TRUE, Boundary.knots=c(0,80))

b.model2 <- lm(wage ~ B1-1)
matplot(reorder.age,B1[order(age)],type="l",lwd=2)
plot(age,wage, title(main = "Regression Spline method on Wage Data"))
lines(reorder.age,fitted(b.model2)[order(age)], col='red', lwd=2)
legend("topright",legend=c("regression spline"), col=c('red'),lwd = 2)
