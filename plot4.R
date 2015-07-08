datafiltered <- read.csv('energy.csv')
datafiltered$datetime <- ymd_hms(datafiltered$datetime)
datafiltered$Global_active_power <- as.numeric(datafiltered$Global_active_power)/1000
png(file = 'plot4.png', width = 480, height = 480)
par(mfcol = c(2,2))

# global active power by day
with(datafiltered, plot(datetime, Global_active_power, type = 'l',
                        main = 'Global Active Power by Day',
                        xlab = 'Day', ylab = 'Global Active Power (kilowatts)'))

# engery sub metering
with(datafiltered, plot(datetime, Sub_metering_1, type = 'l', main = 'Energy Sub Metering',
                        xlab = 'Day', ylab = 'Energy sub metering'))
with(datafiltered, points(datetime, as.numeric(Sub_metering_2), type = 'l', col = 'red'))
with(datafiltered, points(datetime, as.numeric(Sub_metering_3), type = 'l', col = 'blue'))
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1, col = c('black', 'red', 'blue'))


# voltage per datetime
with(datafiltered, plot(datetime, Voltage, type = 'l', main = 'Voltage',
                        xlab = 'datetime', ylab = 'Voltage'))

# global reactive power
with(datafiltered, plot(datetime, Global_reactive_power, type = 'l', main = 'Global Reactive Power'))

dev.off()