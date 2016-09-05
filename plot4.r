#set to have two graphc per column per row
par(mfrow=c(2,2))

#plot 1st graph
with(mydata, plot(Global_active_power~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

#plot 2nd graph in the row
with(mydata, plot(Voltage~Datetime, type="l", ylab="Voltage", xlab="datetime"))

#plot 1st graph in 2nd row
with(mydata, plot(Sub_metering_1~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
with(mydata, lines(Sub_metering_2~Datetime, col="red"))
with(mydata, lines(Sub_metering_3~Datetime, col="blue"))
legend("topright", pch=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 2nd graph in 2nd row
with(mydata, plot(Global_reactive_power~Datetime, type="l", ylab="Global_reactive_power", xlab="datetime"))

#save
dev.copy(png, file="plot4.png")
dev.off()
