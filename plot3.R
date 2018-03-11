> dataFile<-read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", stringsAsFactors=FALSE, dec = ".")
> datasubset <- subset(dataFile, Date %in% c("1/2/2007","2/2/2007"))
> datasubset$Date <- as.Date(datasubset$Date, format="%d/%m/%Y")
> datetime <- paste(as.Date(datasubset$Date), datasubset$Time)
> datasubset$Datetime <- as.POSIXct(datetime)
> with(datasubset, {
  + plot(Sub_metering_1~Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="") 
  + lines(Sub_metering_2~Datetime,col='Red')
  + lines(Sub_metering_3~Datetime,col='Blue')
  + })
> legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
         +        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
> dev.copy(png, file="plot3.png", height=480, width=480)
png 
4 
> dev.off()
RStudioGD 
2 
> 