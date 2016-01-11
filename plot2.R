household_data <- read.csv("household_power_consumption.txt", 
          header = T, sep = ';', na.strings = "?", nrows = 2075259, 
          check.names = F, stringsAsFactors = F, comment.char = "", 
          quote = '\"')
household_data$Date <- as.Date(household_data$Date, format = "%d/%m/%Y")

household_data_subset <- subset(household_data, 
          subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(household_data)

dateandtime <- paste(as.Date(household_data_subset$Date), 
          household_data_subset$Time)
household_data_subset$Datetime <- as.POSIXct(dateandtime)

plot(household_data_subset$Global_active_power ~ household_data_subset$Datetime, 
     type = "lty", ylab = "Global Active Power (kilowatts)", xlab = "")
