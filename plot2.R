png("plot2.png",width = 480,height = 480)
plot(dat$Global_active_power~dat$datetime,type= "l",xlab="",ylab = "Global Active Power (kilowatts)")
dev.off()
