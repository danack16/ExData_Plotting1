png(file="plot1.png", width = 480, height = 480)
power <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, na.strings = "?")

power$Date<-as.Date(power$Date, format="%d/%m/%Y")
red_pow1<- subset(power, Date == "2007-02-01")
red_pow2<- subset(power, Date == "2007-02-02")
red_pow<- rbind(red_pow1, red_pow2)
hist(red_pow$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main= "Global Active Power" )

dev.off()
