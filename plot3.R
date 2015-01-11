## plot3.R

## This is the script for the third plot of Project 1

# set time locale to display dates in English
Sys.setlocale(category = "LC_TIME", locale = "USA")

plot(hpc$DateTime, hpc$Sub_metering_3, type="n", xlab="",
     ylim=c(0,38), ylab="Energy sub metering")
legend_lbl <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend_col <- c("black", "red", "blue")
legend("topright", legend=legend_lbl, col=legend_col, lty=1, cex=0.9)

lines(hpc$DateTime, hpc$Sub_metering_1)
lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")

png(file="plot3.png")
plot(hpc$DateTime, hpc$Sub_metering_3, type="n", xlab="",
     ylim=c(0,38), ylab="Energy sub metering")
legend_lbl <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend_col <- c("black", "red", "blue")
legend("topright", legend=legend_lbl, col=legend_col, lty=1, cex=0.9)

lines(hpc$DateTime, hpc$Sub_metering_1)
lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")
dev.off()
