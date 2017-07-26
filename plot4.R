## Set the parameters to have 2 rows and 2 columns
par(mfrow = c(2,2),mar = c(4,4,2,1)) 

## Plot1 Global Active Power
plot(formatted_data$DateTime, 
     formatted_data$Global_active_power, 
     type = "l",
     xlab = "", 
     ylab = "Global Active Power")

## Plot2 Voltage
plot(formatted_data$DateTime, 
     formatted_data$Voltage,
     type = "l",
     xlab = "datetime", 
     ylab = "Voltage")

## Plot3 Energy Sub metering
plot(formatted_data$DateTime, 
     formatted_data$Sub_metering_1, 
     xlab = "",
     ylab = "Energy Sub metering ", 
     type = "n")

## Plotting points for submeter 1 2 and 3 separately
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

## plot4 Global Reactive Power
plot(formatted_data$DateTime, 
     formatted_data$Global_reactive_power, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Global_reactive_power")
