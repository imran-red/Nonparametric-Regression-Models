library(wavethresh)

wdt <- wd(y,filter.number = 6, family = "DaubExPhase", type = 'wavelet')
wdt.thresh <- threshold(wdt, filter.number = 6, levels = 0:(nlevelsWT(wdt)-1), type = "soft", policy = "universal", dev=madmad, verbose ="TRUE")
model.sim <- wr(wdt.thresh)
plot(x,y, title(main ="Wavelet Regresion method on Simulated Data"))
lines(x,model.sim,col='blue',lwd=2,lty=2)
lines(x,fx)
legend("topright",legend=c("f(x)", "wavelet regression"), lty=1:2, col=c('black','blue'),lwd = 2)
