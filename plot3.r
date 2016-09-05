#plot the sub_metering_1
with(mydata, plot(Sub_metering_1~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

#add sub 2 & 3
with(mydata, lines(Sub_metering_2~Datetime, col="red"))
with(mydata, lines(Sub_metering_3~Datetime, col="blue"))

#add legend
legend("topright", pch=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#save
dev.copy(png, file="plot3.png")
dev.off()
