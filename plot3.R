png("plot3.png",width = 480,height = 480)
with(dat,{
        plot(Sub_metering_1~datetime,type = "l",xlab = "",ylab = "Enery sub metering")
        lines(Sub_metering_2~datetime,col="red")
        lines(Sub_metering_3~datetime,col="blue")
})
legend("topright",lty = 1,col = c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
