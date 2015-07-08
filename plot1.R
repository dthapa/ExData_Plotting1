datafiltered <- read.csv('energy.csv')
datafiltered$datetime <- ymd_hms(datafiltered$datetime)
png(file = 'plot1.png', width = 480, height = 480)
with(datafiltered, hist(as.numeric(Global_active_power)/1000, main = 'Golbal Active Power',
                        xlab = 'Global Active Power (kilowatts)',
                        ylab = 'Frequency', col = 'red'))

dev.off()
