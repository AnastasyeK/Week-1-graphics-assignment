#construct a PNG plot:
png("plot2.png", width = 480, height = 480)

#Plot 2 is a plot of Global Active Power over Time period:
plot(power$newTime,power$Global_active_power, xlab = "", 
     ylab = "Global Active Power (kilowattes)", type = "l")

#Turn off graphics device:
dev.off()


