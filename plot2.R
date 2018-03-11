> dataFile <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> datasubset <- subset(dataFile, Date %in% c("1/2/2007","2/2/2007"))
> datasubset$Date <- as.Date(datasubset$Date, format="%d/%m/%Y")
> datetime <- paste(as.Date(datasubset$Date), datasubset$Time)
> datasubset$Datetime <- as.POSIXct(datetime)
> with(datasubset, {
  + plot(Global_active_power~Datetime, type="l",
         + ylab="Global Active Power (kilowatts)", xlab="")
  + })
> dev.copy(png, file="plot2.png", height=480, width=480)
png 
4 
> dev.off()
RStudioGD 
2 