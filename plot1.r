#read data
> data <- read.csv("R/household_power_consumption.txt", header=T, sep=';', na.strings="?")
> data$Date <- as.Date(data$Date, format="%d/%m/%Y")

#subset data from Feb 2007
> mydata <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

#convert time
> datetime <- paste(as.Date(mydata$Date), mydata$Time)
> mydata$Datetime <- as.POSIXct(datetime)
> 

#making histogram
> hist(mydata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#save to png
> dev.copy(png, file="plot1.png")
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
> 