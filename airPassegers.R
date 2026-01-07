# Load the dataset
AirPassengers

# Verify the dataset
class(AirPassengers)
View(AirPassengers)

# Convert the dataset to dataframe
ap_df <- data.frame(
  year =time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

ap_df_months <- data.frame(
  year=floor(time(AirPassengers)),
  month=cycle(time(AirPassengers)),
  passengers=as.numeric(AirPassengers)
)

ap_df_months

#Basic plot
plot(AirPassengers)


plot(AirPassengers,
     type='l',
     lwd=2,
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="No.of Passengers",
     col="black")
points(AirPassengers,
       type='o',
       pch=17,
       col='red')
grid()

library(ggplot2)
#Plot with Title Axis labels and color
ggplot(ap_df,
       aes(x=year,y=passengers))+
  geom_line(color='darkgreen',linewidth=0.5)+
  labs(
    title="Trend Analysis of Air Passengers",
    caption="Using Air Passengers Dataset",
    subtitle="From 1949-1960",
    x="Months",
    y="no .of Passengers"
  )+
  geom_point(color='red')+
  
  
  
  
geom_smooth(color='yellow',se=FALSE)
theme_minimal()