#construct a PNG plot:
png("plot4.png", width = 480, height = 480)

#Set plotting parameters to fit 4 plots on one page:
par(mfrow = c(2, 2))

#Plot 4 of panel of 4 plots as followed:
#Top left: Global active power over Time (plot1)
hist(power$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")

#Top right: voltage vs datetime
plot(power$newTime, power$Voltage, type = 'l', xlab = "datetime", 
     ylab = "Voltage")

#Bottom left: Energy sub metering (plot3)
plot(power$newTime, power$Sub_metering_1, type = 'l', xlab = "",
     ylab = "Energy sub metering", col = "black")
lines(power$newTime, power$Sub_metering_2, col = "red" )
lines(power$newTime, power$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

#Bottom right: Global reactive power vs datetime
plot(power$newTime, power$Global_reactive_power, type = 'l', xlab = "datetime",
     ylab = "Global_reactive_power")

#Turn off graphics device:
dev.off()
