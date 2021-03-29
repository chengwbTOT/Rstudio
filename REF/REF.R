#REF
setwd("E:/Software/Rdata/test_demo")
getwd()
set.seed(7)
library(mlbench)
library(caret)
data(iris)
control <- rfeControl(functions=rfFuncs, method="cv", number=10)
results <- rfe(iris[,1:4], iris[,5], sizes=c(1:4), rfeControl=control)
print(results)
predictors(results)
plot(results, type=c("g", "o"))

