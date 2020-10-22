data = read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
datetime = paste(data$Date, data$Time, sep = " ")
head(datetime)
date_time = strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
t_data = cbind(date_time, data[, 3:9])
head(t_data)
plot_data = t_data[which(t_data$date_time >= "2007-02-01" & t_data$date_time < "2007-02-03"), ]

# Plot 1 ####
png(filename = "plot1.png", width = 480, height = 480)
hist(plot_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
     ylim = c(0, 1200), main = NULL)
title(main = "Global Active Power")
dev.off()