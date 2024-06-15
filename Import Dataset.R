x <-  seq(1,2,length.out=128)
fx <- sin(2*pi*x)
set.seed(1)

y <- fx + rnorm(128,sd = 0.5)

library(readr)
wdata <- read_csv("file_path/file_name.csv")
View(wdata)

#reordering the dataset
reorder.age <- age[order(age)]
reorder.age
reorder.wage <- wage[order(age)]
reorder.wage

#checking the reordedred dataset
plot(age,wage)
lines(reorder.age,reorder.wage)

#look at the scatterplot and lines
