file <- "./household_power_consumption.txt"
data_table <-read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", nrows=2075259)
data_range <- data_table[data_table$Date %in% c("1/2/2007","2/2/2007") ,]
GAP <- as.numeric(data_range$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAP, main="Global Active Power", col="red",  xlab="Global Active Power (kilowatts)")
dev.off()