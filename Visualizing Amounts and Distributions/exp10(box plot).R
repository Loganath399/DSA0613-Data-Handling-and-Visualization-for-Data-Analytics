setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")

library(ggplot2)

ggplot(df, aes(x = Department, y = Score)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Boxplot of Scores by Department")
