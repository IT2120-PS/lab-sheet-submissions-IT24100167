getwd()
setwd("C:\\Users\\thisu\\OneDrive\\Desktop\\IT24100167")
getwd()

#2
Delivery_Times<-read.table("Exercise.txt", header = TRUE)
print(Delivery_Times)

#3
hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

#4
hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)
cumulative_freq <- cumsum(hist_data$counts)
plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "blue")