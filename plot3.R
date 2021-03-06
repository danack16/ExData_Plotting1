png(file="plot3.png", width = 480, height = 480)  ##opens png
power <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, na.strings = "?")

power$Date<-as.Date(power$Date, format="%d/%m/%Y")
red_pow1<- subset(power, Date == "2007-02-01")
red_pow2<- subset(power, Date == "2007-02-02")
red_pow<- rbind(red_pow1, red_pow2)

plot(red_pow$Sub_metering_1, typ="l", xaxt="n", ylab="Energy sub metering", xlab="")
lines(red_pow$Sub_metering_2, typ="l", col="red")
lines(red_pow$Sub_metering_3, typ="l", col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
axis(1,  at = c(0, 1440, 2880), labels = c("Thur", "Fri", "Sat"), las = 0)
dev.off()
