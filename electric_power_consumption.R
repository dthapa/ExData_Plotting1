# load and subset data
# precompute to save time and generate subset data as a csv 'energy.csv'
# use the generated file in the plotting R scripts for quicker exploration

data <- read.csv('household_power_consumption.txt', sep = ';')
library(lubridate)
data$datetime <- paste(data$Date, data$Time)
data$datetime <- dmy_hms(data$datetime)
library(dplyr)
datafiltered <- filter(data, datetime >= '2007-02-01', datetime < '2007-02-03')
datafiltered$Date <- NULL
datafiltered$Time <- NULL
write.csv(datafiltered, file = 'energy.csv')
