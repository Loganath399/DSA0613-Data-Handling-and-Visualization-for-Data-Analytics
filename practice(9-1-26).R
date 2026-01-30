install.packages("ggplot2")
library(ggplot2)

#pie chart
gender<-data.frame(
  Category=c("male","female"),
  count=c(60,40)
  )

ggplot(gender,aes(x="",y=count,fill=Category))+
  geom_bar(stat="identity",width=1)+
  coord_polar("y")+
  labs(title="Gender Distrubution")+
  theme_void()

#donut

gender <- data.frame(
  Category = c("male", "female"),
  count = c(60, 40)
)

ggplot(gender, aes(x = 2, y = count, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  xlim(0.5, 2.5) +   # creates the hole in the middle
  labs(title = "Gender Distribution (Donut Chart)") +
  theme_void()

#scatter plot 

students <- data.frame(
  StudyHours=c(2,3,5,6,7,8),
  Marks=c(40,45,60,70,80,90)
)

ggplot(students, aes(x = StudyHours, y = Marks)) +
  geom_point(size=3, color="orange") +
  labs(title = "Relationship Between Study Hours and Mark",
       x="Study hours",
       y="Marks") +
  theme_minimal()


#linear regression 
ggplot(students, aes(x = StudyHours, y = Marks)) +
  geom_point() +
  geom_smooth(method="lm",se=TRUE)+
  labs(title = "Relationship Between Study Hours and Mark",
       x="Study hours",
       y="Marks") +
  theme_minimal()

#bubble
ggplot(students, aes(x = StudyHours, y = Marks,size=Marks))+
  geom_point(alpha=0.6)+
  labs(title = "Bubble Chart Showing Reatioship")

#correlation heatmap
install.packages("reshape2")
  daata<-cor(students)
  library(reshape2)
  melted<-melt(daata)
  ggplot(melted,aes(x=Var1,y=Var2,fill=value))+
    geom_tile()+
    labs(title="correlation Heatmap")
  
#
  library(ggplot2)
  library(reshape2)
  students <- data.frame(
    StudyHours=c(2,3,5,6,7,8),
    Marks=c(40,45,60,70,80,90),
    Attendence=c(60,70,75,85,90,95)
  )
  corr_matrix <- cor(students)
  melted_corr <- melt(corr_matrix)
  ggplot(melted_corr, aes(x = Var1, y = Var2, fill = value)) +
    geom_tile() +
    scale_fill_gradient2(low = "red", mid = "white", high = "blue",
                         midpoint = 0) + labs(title = "Correlogram") +
    
    theme_minimal()