setwd("C:/Users/logan/OneDrive/Desktop/data handling")
getwd()

dataa=read.csv("students.csv")
dataa

data1=read.csv("students.csv")
data1

data2=read.csv("students.csv")
data2

install.packages("ggplot2")
library(ggplot2)


ggplot(dataa,aes(x=Department,y=Students,fill = gender))+
  geom_bar(stat="identity")+
  scale_fill_brewer(palette = "Set1") +
  labs(title="grouped bar chart",
       x="department",
       y="number of students")

ggplot(data1,aes(x=Department,y=Students))+
  geom_bar(stat="identity",fill="orange")+
  labs(title="students department",
       x="department",
       y="number of students")


ggplot(data2,aes(x=Department,y=Students,fill = gender))+
  geom_bar(stat="identity",position="dodge")+
  scale_fill_brewer(palette = "Set2") +
  labs(title="grouped bar chart",
       x="department",
       y="number of students")

