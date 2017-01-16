#### This script will import data and plot first histogram in assignment
## set working directory
setwd(dir = "C:/Swapnil/Docs/Data Science/exploratory-data-analysis/exploratory-data-analysis-assignment1/")

## Import the data
df <- read.csv("./Data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header = T, sep = ";", quote = "", na.strings = "?", stringsAsFactors=F)

## subset data and bring columns into proper format
df <- df[df$Date %in% c("1/2/2007", "2/2/2007"), ]
df$DateTime <- strptime(paste(df$Date, df$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")

png("./plot2.png", width=480, height=480)
plot(df$DateTime, df$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
