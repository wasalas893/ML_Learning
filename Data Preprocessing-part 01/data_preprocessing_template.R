

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