setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")
library(ggplot2)

ggplot(df, aes(x = Semester, y = Department, fill = Score)) +
  geom_tile() +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Heatmap of Scores by Semester and Department")