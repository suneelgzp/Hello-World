> dataFile<-read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", stringsAsFactors=FALSE, dec = ".")
> datasubset <- subset(dataFile, Date >= "1/2/2007", Date<= "2/2/2007")
> datasubset$Date <- as.Date(datasubset$Date, format="%d/%m/%Y")
> hist(datasubset$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
> png("plot1.png", width=480, height=480)
> dev.off()
RStudioGD 
2