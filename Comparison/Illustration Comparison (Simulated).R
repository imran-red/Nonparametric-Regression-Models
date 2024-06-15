library(npreg)
library(splines)
library(wavethresh)

#make sure the variables/commands from the simulated dataset is in the workspace
plot(x, y, title(main = "Comparison on Simulated Dataset"))
lines(x, fitted(b.model),  col="red", lwd=2,lty=2)
lines(x,fitted(mod.ss),col='darkorchid1',lwd = 2,lty = 2)
lines(x,model.sim,col='blue',lwd=2,lty=2)

legend("topright",legend=c("B-splines", "smoothing spline", "wavelet"), lty=2, col=c('red','darkorchid1', "blue"),lwd = 2)



