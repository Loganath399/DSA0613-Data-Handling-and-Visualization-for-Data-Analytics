setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")

library(ggplot2)
library(ggridges)

ggplot(df, aes(x = Score, y = Department, fill = Department)) +
  geom_density_ridges(alpha = 0.7) +
  labs(title = "Ridgeline Plot of Scores")
