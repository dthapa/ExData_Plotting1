datafiltered <- read.csv('energy.csv')
datafiltered$datetime <- ymd_hms(datafiltered$datetime)
png(file = 'plot3.png', width = 480, height = 480)
with(datafiltered, plot(datetime, Sub_metering_1, type = 'l', main = 'Energy Sub Metering',
     xlab = 'Day', ylab = 'Energy sub metering'))
with(datafiltered, points(datetime, as.numeric(Sub_metering_2), type = 'l', col = 'red'))
with(datafiltered, points(datetime, as.numeric(Sub_metering_3), type = 'l', col = 'blue'))
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1, col = c('black', 'red', 'blue'))

dev.off()