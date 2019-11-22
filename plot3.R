#construct a PNG plot:
png("plot3.png", width = 480, height = 480)

#Plot 3 of Energy sub metering with 3 colors indicating each meter data point:
plot(power$newTime, power$Sub_metering_1, type = 'l', xlab = "",
     ylab = "Energy sub metering", col = "black")
lines(power$newTime, power$Sub_metering_2, col = "red" )
lines(power$newTime, power$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

#Turn off graphics device:
dev.off()
