#the original file is renamed as power_data and is in the current directory
pow_data <- read.table('power_data.txt', header=TRUE, sep=";", stringsAsFactors=FALSE)
date_set <- pow_data[pow_data$Date %in% c("1/2/2007","2/2/2007"),]
G_A_P <- as.numeric(date_set$Global_active_power)
datetime <- strptime(paste(date_set$Date, date_set$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, G_A_P, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()