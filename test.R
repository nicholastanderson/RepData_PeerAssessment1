library(dplyr)
setwd("C:/Users/nicholas.anderson/Documents/R/ReproducibleResearch/RepData_PeerAssessment1")

data<-read.csv("activity.csv",stringsAsFactors=FALSE)
data[,"date"]<-as.Date(data[,"date"])

data_date<-group_by(data,date)
data_mean<-summarise(data_date,mean(steps,na.rm=TRUE))
print(data_mean)
