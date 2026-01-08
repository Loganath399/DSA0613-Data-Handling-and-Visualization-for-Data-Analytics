setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")
library(ggplot2)

ggplot(df, aes(x = Department, y = Score, fill = Course)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Scores by Department and Course")
