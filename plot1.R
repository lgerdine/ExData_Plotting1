## Exploratory Data Analyis Course Project 1

## This assignment uses data from the UC Irvine Machine Learning Repository
## Dataset: Electric power consumption [20Mb]
## Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
## Variables: The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
## 1.Date: Date in format dd/mm/yyyy 
## 2.Time: time in format hh:mm:ss 
## 3.Global_active_power: household global minute-averaged active power (in kilowatt) 
## 4.Global_reactive_power: household global minute-averaged reactive power (in kilowatt) 
## 5.Voltage: minute-averaged voltage (in volt) 
## 6.Global_intensity: household global minute-averaged current intensity (in ampere) 
## 7.Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). 
## 8.Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. 
## 9.Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


setwd("C:/Users/Owner/Documents/data")
HPC <- read.csv("householdpowerconsumption.txt", sep = ";")
HPC1 <- subset(HPC, HPC$Date =="1/2/2007" | HPC$Date == "2/2/2007")
tidydata <- read.csv("tidydata.csv")

png("plot1.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))
hist(tidydata$globalactivepower, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()





