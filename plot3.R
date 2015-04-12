file <- "./household_power_consumption.txt"
data_table <-read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", nrows=2075259)
data_range <- data_table[data_table$Date %in% c("1/2/2007","2/2/2007") ,]
DT <-strptime(paste(data_range$Date, data_range$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(data_range$Global_active_power)
SM1 <- as.numeric(data_range$Sub_metering_1)
SM2 <- as.numeric(data_range$Sub_metering_2)
SM3 <- as.numeric(data_range$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(DT, SM1, ylab="Energy sub metering", xlab="")
lines(DT, SM1, col = 'Black')
lines(DT, SM2, col = 'Red')
lines(DT, SM3, col = 'Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()