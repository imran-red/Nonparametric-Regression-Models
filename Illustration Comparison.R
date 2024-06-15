library(npreg)
library(splines)
library(wavethresh)

#make sure all the variables/commands from the wage dataset are in the workspace
plot(reorder.age,reorder.wage)
lines(reorder.age,fitted(b.model2)[order(age)], col='red', lwd=2,lty = 2)
lines(age[order(age)],model.wage,col="blue",lwd=2, lty = 2)
lines(age[order(age)],fitted(wage.ssmod2),col='darkorchid1',lwd = 2 , lty = 2)

legend("topright",legend=c("B-splines", "smoothing spline", "wavelet"), lty=2, col=c('red','darkorchid1', "blue"),lwd = 2)
