library(wavethresh)

wage.wdt <- wd(wage[order(age)],filter.number = 5, family = "DaubExPhase", type = 'wavelet')
wage.wdt.thresh <- threshold(wage.wdt, filter.number = 5, levels = 0:(nlevelsWT(wage.wdt)-1), type = "soft", policy = "universal",dev=madmad, verbose ="TRUE")
wage.wdt.thresh
model.wage <- wr(wage.wdt.thresh)
plot(age,wage, title(main = "Wavelet Regression Method on Wage Data"))
lines(age[order(age)],model.wage,col="blue",lwd=2)
legend("topright",legend=c("Wavelet Regression"), lty=1:2, col=c('blue'),lwd = 2)
