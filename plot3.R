# Plot 3 ####
png(filename = "plot3.png", width = 480, height = 480)
plot(plot_data$date_time, plot_data$Sub_metering_1, type = "n", xlab = NULL, ylab = NULL, main = NULL)
lines(plot_data$date_time, plot_data$Sub_metering_1, col = "black")
lines(plot_data$date_time, plot_data$Sub_metering_2, col = "red")
lines(plot_data$date_time, plot_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1)
dev.off()
