setwd("C:/Users/logan/OneDrive/Desktop/data handling")
df <- read.csv("student_performance_data.csv")

library(ggplot2)

ggplot(df, aes(x = Score)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  labs(title = "Histogram of Scores")
