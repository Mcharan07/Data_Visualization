VADeaths
?VADeaths

class(VADeaths)

help(class)
va_df<- as.data.frame(VADeaths)
class(va_df)
View(va_df)

va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
va_df

va_long=reshape(va_df,
                direction="long",
                varying=colnames(VADeaths),
                v.names="DeathRate",
                timevar="Population",
                times=colnames(VADeaths)
                )
View(va_long)

hist(va_long$DeathRate)
hist(va_long$DeathRate,
     main="Basic Histogram of VA Deathrates",
     xlab="VA Deathrates",
     ylab="Frequency",
     labels=TRUE,
     col="skyblue",
     border="red")
hist(va_long$DeathRate,
     main="Basic Histogram of VA Deathrates",
     breaks=5,
     xlab="VA Deathrates",
     ylab="Frequency",
     labels=TRUE,
     col="red",
     border="black")
help(hist)
library(ggplot2)
ggplot(
  va_long, aes(x = DeathRate)
) +
  geom_histogram(
    bins = 15,
    fill = "steelblue",
    col = "red"
  ) +
  labs(
    title = "GGPlot - Histogram of VA Death Rates",
    x = "Death Rate",
    y = "Frequency"
  )
