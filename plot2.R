## plot2.R

## This is the script for the second plot of Project 1

# set time locale to display dates in English
Sys.setlocale(category = "LC_TIME", locale = "USA")

plot(hpc$DateTime, hpc$Global_active_power,
     ylab="Global Active Power (kilowatts)", xlab="", type="l")

png(file="plot2.png")
plot(hpc$DateTime, hpc$Global_active_power,
     ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()