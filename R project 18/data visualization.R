project<-read.csv("grc.csv")
project
table(project$paymentType)
barplot(
  height = table(project$paymentType),
  col="skyblue",
  main="Compare cash and credit totals",
  xlab = "paymenttype",
  ylab="count"
)
pie(
  x=table(project$paymentType),
  main = "Compare cash and credit totals"
)
library(dplyr)
totalperage<- group_by(project,age)
totalperage
totalperage <- summarise(totalperage,totalspending=sum(total))
totalperage
barplot(
  height = totalperage$totalspending,
  name=totalperage$age,
  col="skyblue",
  main="Compare each age and sum of total spending",
  xlab="age",
  ylab="total"
)
pie(
  x=totalperage$totalspending,
  labels =totalperage$age,
  main="Compare each age and sum of total spending"
)



emp<-read.csv("grc.csv")
emp
library(dplyr)
salpercity<-group_by(emp,city)
salpercity<-summarise(salpercity,totalspending=sum(total))
salpercity<-salpercity<-arrange(salpercity,desc(totalspending))


is.data.frame(salpercity)

pie(
x=salpercity$totalspending,
labels = salpercity$city,
main = ("compare")
)




emp<-read.csv("grc.csv")
emp
library(dplyr)
salpercity<-group_by(emp,city)
salpercity<-summarise(salpercity,totalspending=sum(total))
salpercity<-arrange(salpercity,desc(totalspending))
is.data.frame(salpercity)
barplot(
height = salpercity$totalspending,
names = salpercity$city,
col= "yellow",
main = ("compare each city"),
las = 2

)

employees<- read.csv("grc.csv")
employees
boxplot(
  x=employees$total,
  main="distribution employess total spending",
  xlab="total spending"
)




