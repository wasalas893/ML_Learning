

#data set import


dataset=read.csv('Data.csv')

#Tacking care of missing data Age
dataset$Age=ifelse(is.na(dataset$Age),
                   ave(dataset$Age,FUN=function(x)mean(x,na.rm = TRUE)),
                   dataset$Age)

#Tacking care of missing data Salary
dataset$Salary=ifelse(is.na(dataset$Salary),
                   ave(dataset$Salary,FUN=function(x)mean(x,na.rm = TRUE)),
                   dataset$Salary)


# Encoding categorical data Counry
dataset$Country=factor(dataset$Country,
                       levels = c('France','Spain','Germany'),
                       labels = c(1,2,3))


# Encoding categorical data Purchased
dataset$Purchased=factor(dataset$Purchased,
                       levels = c('No','Yes'),
                       labels = c(0,1))
 
# install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased,SplitRatio=0.8)
traning_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)



