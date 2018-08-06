SelectedData$DateTime <- strptime(paste(SelectedData$Date, SelectedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(SelectedData$DateTime, SelectedData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
