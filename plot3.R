## Energy Submetering Plot
plot(formatted_data$DateTime, 
     formatted_data$Sub_metering_1, 
     xlab = "",
     ylab = "Energy Sub metering ", 
     type = "n")

## Plotting points for submeter_1 2 and 3 separately
points(formatted_data$DateTime,
       formatted_data$Sub_metering_1, 
       type = "l")

points(formatted_data$DateTime, 
       formatted_data$Sub_metering_2, 
       type = "l", 
       col = "red")

points(formatted_data$DateTime, 
       formatted_data$Sub_metering_3,
       type = "l",
       col = "blue")

legend("topright", lty = 1, 
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
