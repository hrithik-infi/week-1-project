#the original file is renamed as power_data and is in the current directory
pow_data <- read.table('power_data.txt', header=TRUE, sep=";", stringsAsFactors=FALSE)
date_set <- pow_data[pow_data$Date %in% c("1/2/2007","2/2/2007"),]
G_A_P <- as.numeric(date_set$Global_active_power)
png("plot1.png", width=480, height=480)
hist(G_A_P, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()