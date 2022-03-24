dataset=read.csv('SADS.csv')
library('caTools')
set.seed(123)
split=sample.split(dataset,SplitRatio = .8)
training_set=subset(dataset,split==TRUE)
testing_set=subset(dataset,split==FALSE)
regressor<-lm(formula=dataset~.,data=training_set)

new<-data.frame(Day='Monday',Sleep Hour=8,Excercise Hour=2,Study Hour=4,StudyDS Hour=1,Work Hour=0)
predict(regressor,new)

new1<-data.frame(Day='Saturday',Sleep Hour=7,Excercise Hour=0,Study Hour=2,StudyDS Hour=1,Work Hour=2)
predict(regressor,new1)

new2<-data.frame(Day='Tuesday',Sleep Hour=6,Excercise Hour=4,Study Hour=0,StudyDS Hour=0,Work Hour=2)
predict(regressor,new2)

new3<-data.frame(Day='Wednesday',Sleep Hour=5,Excercise Hour=2,Study Hour=2,StudyDS Hour=2,Work Hour=2)
predict(regressor,new3)

new3<-data.frame(Day='Friday',Sleep Hour=6,Excercise Hour=4,Study Hour=2,StudyDS Hour=1,Work Hour=2)
predict(regressor,new3)