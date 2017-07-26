library(dplyr)
library(lubridate)
## Reading the file to pow_con
pow_con <- read.table("household_power_consumption.txt", 
                      na.strings = "?", 
                      sep = ";", 
                      header = TRUE) 

## subsetting the pow_con to get data from 1st and 2nd Feb 2007
req_data <- subset(pow_con,
                   Date == "1/2/2007"| Date == "2/2/2007")

## Making a new variable DateTime combining Date and time, uses functions from dplyr and lubridate
formatted_data <- mutate(req_data, 
                         DateTime = dmy_hms(paste(req_data$Date, 
                                                  req_data$Time)))