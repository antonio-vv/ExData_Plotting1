# Plot 2 ####
png(filename = "plot2.png", width = 480, height = 480)
plot(plot_data$date_time, plot_data$Global_active_power, type = "n", xlab = NULL, 
     ylab = "Global Active Power (kilowatts)", main = NULL)
lines(plot_data$date_time, plot_data$Global_active_power, col = "black")
dev.off()
