#Load the data into R
getFile <- file("household_power_consumption.txt")
plotDate <- read.table(getFile, 
                    col.names = c("Date", "Time", "Global_active_power", 
                                  "Global_reactive_power", "Voltage", 
                                  "Global_intensity", "Sub_metering_1", 
                                  "Sub_metering_2", "Sub_metering_3"), sep = ";", 
                    header = TRUE, na.strings = "?")

#convert date and time variables:
#subset data from dates 2007-02-01 and 2007-02-02
power <- plotDate[plotDate$Date %in% c("1/2/2007","2/2/2007"),]
power <- transform(power, newTime = strptime(paste(Date, Time, sep=" "),
                                             "%d/%m/%Y %H:%M:%S"))
#construct a PNG plot:
png("plot1.png", width = 480, height = 480)

#plot 1 is histogram with Global active power in x axis and Frequency on Y
hist(power$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

#Turn off graphics device:
dev.off()

