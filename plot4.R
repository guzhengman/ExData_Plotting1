## plot4.R

## This is the script for the fourth plot of Project 1

# set time locale to display dates in English
Sys.setlocale(category = "LC_TIME", locale = "USA")

# set for 2 rows and 2 columns
par(mfrow=c(2,2))

# set margins for the top row
par(mar=c(5.5, 4.2, 1.5, 1.5))

plot(hpc$DateTime, hpc$Global_active_power,
     ylab="Global Active Power", xlab="", type="l")

plot(hpc$DateTime, hpc$Voltage,
     ylab="Voltage", xlab="datetime", type="l")

# set margins for the bottom row
par(mar=c(4.4, 4.2, 2.2, 1.5))

plot(hpc$DateTime, hpc$Sub_metering_3, type="n", xlab="",
     ylim=c(0,38), ylab="Energy sub metering")
legend_lbl <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend_col <- c("black", "red", "blue")
legend("topright", legend=legend_lbl, col=legend_col, bty="n", lty=1, cex=0.7)
lines(hpc$DateTime, hpc$Sub_metering_1)
lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")

plot(hpc$DateTime, hpc$Global_reactive_power,
     ylab="Global_reactive_power", xlab="datetime", type="l")

# plot to png file
png(file="plot4.png")
par(mfrow=c(2,2))

par(mar=c(5.5, 4.2, 1.5, 1.5))

plot(hpc$DateTime, hpc$Global_active_power,
     ylab="Global Active Power", xlab="", type="l")

plot(hpc$DateTime, hpc$Voltage,
     ylab="Voltage", xlab="datetime", type="l")

par(mar=c(4.4, 4.2, 2.2, 1.5))

plot(hpc$DateTime, hpc$Sub_metering_3, type="n", xlab="",
     ylim=c(0,38), ylab="Energy sub metering")
legend_lbl <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend_col <- c("black", "red", "blue")
legend("topright", legend=legend_lbl, col=legend_col, bty="n", lty=1, cex=0.7)
lines(hpc$DateTime, hpc$Sub_metering_1)
lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")

plot(hpc$DateTime, hpc$Global_reactive_power,
     ylab="Global_reactive_power", xlab="datetime", type="l")

dev.off()