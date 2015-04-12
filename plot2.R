file <- "./household_power_consumption.txt"
data_table <-read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", nrows=2075259)
data_range <- data_table[data_table$Date %in% c("1/2/2007","2/2/2007") ,]
DT <-strptime(paste(data_range$Date, data_range$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(data_range$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DT, GAP, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()