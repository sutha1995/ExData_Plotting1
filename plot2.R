library(dplyr)
library(lubridate)

setwd("~/Exploratory Data Analysis")
fulldata <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
energyusage <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(energyusage$Date, energyusage$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)

plot(datetime, energyusage$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
