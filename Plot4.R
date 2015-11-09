png(filename = "./plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))

plot(selectdata$DT, selectdata$Global_active_power, type = "l", ylab = "Global Active Power", 
     xlab = "")

plot(selectdata$DT, selectdata$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(selectdata$DT, selectdata$Sub_metering_1, type = "l", ylab = "Energy sub metering", 
     xlab = "", col = "black")
points(selectdata$DT, selectdata$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", 
       col = "red")
points(selectdata$DT, selectdata$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", 
       col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
                                                                        "Sub_metering_2", "Sub_metering_3"), bty = "n", )

plot(selectdata$DT, selectdata$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", ylim = c(0, 0.5))
dev.off()
