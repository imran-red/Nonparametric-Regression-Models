library(npreg)

wage.ssmod2 <- ss(age[order(age)], wage[order(age)], all.knots = TRUE, lambda = 8e-5)
plot(age,wage, cex=0.5 , title(main = "Smoothing Spline on Wage Data"))
lines(age[order(age)],fitted(wage.ssmod2),col='darkorchid1',lwd = 2 )
legend("topright",legend=c("smoothing spline"), lty=1:2, col=c('darkorchid1'),lwd = 2)

#extracting features
wage.ssmod2
