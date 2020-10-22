# Plot 4 ####
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
# First plot
plot(plot_data$date_time, plot_data$Global_active_power, type = "n", xlab = NULL, 
     ylab = "Global Active Power (kilowatts)", main = NULL)
lines(plot_data$date_time, plot_data$Global_active_power, col = "black")
#Second plot
plot(plot_data$date_time, plot_data$Voltage, type = "n", xlab = "datetime", 
     ylab = "Voltage", main = NULL)
lines(plot_data$date_time, plot_data$Voltage, col = "black")
# Third plot
plot(plot_data$date_time, plot_data$Sub_metering_1, type = "n", xlab = NULL, ylab = NULL, main = NULL)
lines(plot_data$date_time, plot_data$Sub_metering_1, col = "black")
lines(plot_data$date_time, plot_data$Sub_metering_2, col = "red")
lines(plot_data$date_time, plot_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1)
# Fourth plot
plot(plot_data$date_time, plot_data$Global_reactive_power, type = "n", xlab = "datetime", 
     ylab = "Global Reactive Power", main = NULL)
lines(plot_data$date_time, plot_data$Global_reactive_power, col = "black")
dev.off()
