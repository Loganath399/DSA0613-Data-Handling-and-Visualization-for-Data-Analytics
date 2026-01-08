setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")
library(ggplot2)

ggplot(df, aes(x = Score, y = Department)) +
  geom_point(size = 3, color = "darkblue") +
  labs(title = "Dot Plot of Scores by Department")
