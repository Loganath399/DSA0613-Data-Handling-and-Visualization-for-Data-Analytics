
setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")
library(ggplot2)
ggplot(df, aes(x = Department, y = Score)) +
  geom_bar(stat = "summary", fun = "mean", fill = "pink") +
  labs(title = "Average Score by Department",
       y = "Average Score")
