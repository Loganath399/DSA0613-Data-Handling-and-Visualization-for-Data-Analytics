install.packages("ggplot2")
library(ggplot2)
install.packages("ggridges")
library(ggridges)

set.seed(213)
df<-data.frame(value=rnorm(200,mean=60,sd=30))
ggplot(df,aes(x=value))+
  geom_density(fill="lightblue",color="darkblue",alpha=0.5)+
  labs(title="Density Plot",
       x="Values",
       y="Density")

#rich lie(distribution of data line)
df<-diamonds[1:100,c("color","depth")]
ggplot(df,aes(x=depth,y=color))+
  geom_density_ridges(fill="red")+
  labs(title="graph",
       x="depth",
       y="color")

#heat map(matrix)
m <- matrix(c(1, 2,5,
              4, 5,6,
              6, 8,57,
              90, 67,7,
              77, 89,1),
            nrow = 5, byrow = TRUE)

rownames(m) <- paste("Row", 1:5)
colnames(m) <- paste("Col", 1:3)

df <- as.data.frame(as.table(m))

ggplot(df, aes(Var2, Var1, fill = Freq)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightblue", high = "blue") +
  theme_minimal() +
  labs(x = "Columns", y = "Rows", fill = "Value")

#