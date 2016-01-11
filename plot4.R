par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
    with(household_data_subset, {
      plot(Global_active_power ~ dateandtime, type = "lty",
      ylab = "Global Active Power", xlab = "")
      plot(Voltage ~ dateandtime, type = "lty", ylab = "Energy sub metering", xlab = "")
      lines(Sub_metering_2 ~ dateandtime, col = 'Red')
      lines(Sub_metering_3 ~ dateandtime, col = 'Blue')
      legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n",
             legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      plot(Global_reactive_power ~ dateandtime, type = "lty", ylab = "Global_reactive_power", xlab = "date and time")
    })