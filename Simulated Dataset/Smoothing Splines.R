library(npreg)

mod.ss <- ss(x,y,all.knots = TRUE)
plot(x,y, title(main = "Smoothing Spline Regression method on Simulated Data"))
lines(x,fitted(mod.ss),col='darkorchid1',lwd = 2,lty = 2)
lines(x,fx)
legend("topright",legend=c("f(x)", "smoothing spline"), lty=1:2, col=c('black','darkorchid1'),lwd = 2)

#extracting features
mod.ss

