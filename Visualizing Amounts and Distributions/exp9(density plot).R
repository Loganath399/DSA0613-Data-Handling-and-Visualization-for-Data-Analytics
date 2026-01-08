setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")

library(ggplot2)

ggplot(df, aes(x = Score)) +
  geom_density(fill = "purple", alpha = 0.5) +
  labs(title = "Density Plot of Scores")
