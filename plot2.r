#plot 2
> plot(mydata$Global_active_power~mydata$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

#save file
> dev.copy(png, file="plot2.png")
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
