setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")
library(ggplot2)


df <- read.csv("student_performance_data.csv")
ggplot(df, aes(x = Department, y = Score)) +
  geom_violin(fill = "skyblue") +
  labs(title = "Score Distribution by Department")
