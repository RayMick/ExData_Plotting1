# powerdata <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?")
# powerdata$Date <- as.Date(powerdata$Date, format = "%d/%m/%Y")
# 
# selectdata <- subset(powerdata, subset = (Date >="2007-02-01" & Date <="2007-02-02"))
# DT <- paste(as.Date(selectdata$Date), selectdata$Time)
# selectdata$DT <- as.POSIXct(DT)

png(filename = "./plot3.png", width = 480, height = 480, units = "px")


plot(selectdata$DT, selectdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(selectdata$DT, selectdata$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", 
       col = "red")
points(selectdata$DT, selectdata$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", 
       col = "blue")

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

