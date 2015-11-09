powerdata <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?")
powerdata$Date <- as.Date(powerdata$Date, format = "%d/%m/%Y")
#powerdata$Datatime <- strptime(paste(powerdata$Date, powerdata$Time), "%d/%m/%Y %H:%M%:%S")

selectdata <- subset(powerdata, subset = (Date >="2007-02-01" & Date <="2007-02-02"))

#selectdata$Datatime <- strptime(paste(selectdata$Date, selectdata$Time), "%d/%m/%Y %H:%M%:%S")
DT <- paste(as.Date(selectdata$Date), selectdata$Time)
selectdata$DT <- as.POSIXct(DT)

png(filename = "./plot2.png", width = 480, height = 480, units = "px")
plot(selectdata$DT, selectdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
