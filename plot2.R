## Plotting DateTime and Global Active Power
plot(formatted_data$DateTime, 
     formatted_data$Global_active_power, 
     type = "l",
     xlab = "", 
     ylab = "Global Active Power(Kilowatts)")