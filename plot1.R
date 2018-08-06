unzip("M:/DS/Exploratory Data Analysis/Course Project 1/exdata%2Fdata%2Fhousehold_power_consumption.zip", exdir = "M:/DS/Exploratory Data Analysis/Course Project 1")
RawFile <- file("M:/DS/Exploratory Data Analysis/Course Project 1/household_power_consumption.txt")
SelectedData <- read.table(text = grep("^[1,2]/2/2007", readLines(RawFile), value = TRUE), sep = ";", col.names = c("Date","Time","Global_active_power", "Global_reactive_power","Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
png("plot1.png", width = 480, height = 480)
hist(SelectedData$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()

