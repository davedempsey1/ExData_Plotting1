with(household_data_subset, {plot(Sub_metering_1 ~ dateandtime, 
    type = "lty", ylab = "Global Active Power (kilowatts)", xlab = "") 
    lines(Sub_metering_2 ~ dateandtime, col = 'Red')
    lines(Sub_metering_3 ~ dateandtime, col = 'Blue')})

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
