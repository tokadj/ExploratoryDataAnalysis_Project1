Sys.setlocale("LC_TIME","english")

fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl,destfile = "dataset.zip")
unzip("dataset.zip",overwrite = TRUE)

a<-read.table("./household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
dat<-subset(a,Date %in% c("1/2/2007","2/2/2007"))
dat<-dat[complete.cases(dat),]

datetime<-strptime(paste(dat$Date,dat$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
dat<-cbind(datetime,dat)
