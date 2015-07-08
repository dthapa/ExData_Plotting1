datafiltered <- read.csv('energy.csv')
datafiltered$datetime <- ymd_hms(datafiltered$datetime)
png(file = 'plot2.png', width = 480, height = 480)
with(datafiltered, plot(datetime, as.numeric(Global_active_power)/1000, type = 'l',
                        main = 'Global Active Power by Day',
                        xlab = 'Day', ylab = 'Global Active Power (kilowatts)'))

dev.off()