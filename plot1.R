library(dplyr)
library(lubridate)

setwd("~/Exploratory Data Analysis")
fulldata <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
energyusage <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

as.Date(energyusage$Date, format="%d/%m/%Y")

#deleted all the rows that had NA values
energyusage <-na.omit(energyusage)
png("plot1.png", width=480, height=480)
hist(energyusage$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
#the histogram of plot1 png is created.
dev.off()
