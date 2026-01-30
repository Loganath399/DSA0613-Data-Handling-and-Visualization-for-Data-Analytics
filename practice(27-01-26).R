#time series

install.packages("ggplot2")
install.packages("rlang")
library(ggplot2)

data<-data.frame(
  Year=c(2018,2019,2020,2021,2022,2023),
  Sales=c(150,200,180,220,300,350)

)
plot<-ggplot(data,aes(x=Year,y=Sales))+
  geom_line(color="blue",size=1)+
  geom_point(color="red",size=3)+
  labs(
    title="yearly sales trends",
    x="year",
    y="sales"
    )+
  theme_minimal()+
  theme(
    plot.title=element_text(hjust=0.5,face="bold",size=14)
  )
print(plot)

#multiple time series
install.packages("ggplot2")
install.packages("tidyr")
library(ggplot2)
library(tidyr)
 df<-data.frame(
   year=2015:2020,
   sales_A=c(120,150,170,160,180,200),
   sales_B=c(100,130,140,150,170,190),
   sales_C=c(90,110,130,140,160,175)
 )
 df_long<-df%>%
   pivot_longer(
     cols=start_with("sales"),names_to="product",values_to="sales"
   )
ggplot(df_long,aes(x=year,y=sales,color=Product))+
  geom_line(size=1)+
  geom_point(size=2)+
  labs(title="sales trends by product",
       x="year",
       y="sales",
       color="Product")+
  theme_minimal()+
  theme(plot.title=element_text(hjust=0.5))
print(plot)

#dose-response Curves

set.seed(123)
data<-data.frame(
  date=seq(as.Date("2023-01-01"),as.Date("2023-12-31"),by="month"),
  sales=round(runif(12,100,500),0),
  profit=round(runif(12,0,300),0)
)

#Choropleth

install.packages("sf")
install.packages("ggplot2")
install.packages("dplyr")

library(sf)
library(ggplot2)
library(dplyr)

district_map <- st_read(
  system.file("shape/nc.shp", package = "sf"),
  quiet = TRUE
)


set.seed(123)

district_map <- district_map %>%
  mutate(
    total_tests = sample(5000:20000, n(), replace = TRUE),
    positive_cases = sample(200:3000, n(), replace = TRUE)
  )

district_map <- district_map %>%
  mutate(
    positivity_rate = (positive_cases / total_tests) * 100
  )

ggplot(district_map) +
  geom_sf(aes(fill = positivity_rate), color = "white", size = 0.2) +
  scale_fill_gradient(
    low = "green",
    high = "red",
    name = "Positivity Rate (%)"
  ) +
  labs(
    title = "COVID-19 Positivity Rate by District",
    subtitle = "Higher values indicate higher infection risk"
  ) +
  theme_minimal()

#Cartograms
install.packages("sf")
install.packages("ggplot2")
install.packages("cartogram")
install.packages("rnaturalearth")
install.packages("rnaturalearthdata")
install.packages("dplyr")

library(sf)
library(ggplot2)
library(cartogram)
library(rnaturalearth)
library(rnaturalearthdata)
library(dplyr)

world <- ne_countries(scale = "medium", returnclass = "sf")

world <- world %>% filter(!is.na(pop_est) & pop_est > 0)

world_proj <- st_transform(world, crs = 3857)

world_carto <- cartogram_cont(world_proj, weight = "pop_est", itermax = 5)

ggplot(world_carto) +
  geom_sf(aes(fill = pop_est), color = "black", size = 0.1) +
  scale_fill_viridis_c(option = "plasma", trans = "log10",
                       name = "Population (log scale)") +
  theme_minimal() +
  labs(title = "World Population Cartogram",
       subtitle = "Areas scaled by population",
       caption = "Data source: Natural Earth") +
  theme(legend.position = "bottom")

#Heatmaps for Spatial Data
0..