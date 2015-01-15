## plot1.R
##
## This is the R script for the first project in Coursera course
## Exploratory Data Analysis

# The ¡§Individual household electric power consumption Data Set¡¨ 
# household_power_consumption.txt has been downloaded to the
# working directory.  The decompressed file size is about 129MB.
#
# setwd("ExploratoryDataAnalysis")

zipfile <- "exdata_data_household_power_consumption.zip"
powfile <- "household_power_consumption.txt"

# set up the connection to zip file
if (! is.na(zipfile)) {
  powfile <- unz(zipfile, powfile)
}

# load the dataset
hpc <- read.table(powfile, header=TRUE, stringsAsFactors = FALSE,
                  sep=";", na.strings="?")

# convert to date/time class
hpc$DateTime <- strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")

# filter to keep only 2007-02-01 and 2007-02-02
date1 <- strptime("2007-02-01","%Y-%m-%d")
date2 <- strptime("2007-02-03","%Y-%m-%d")
hpc <- hpc[date1 <= hpc$DateTime & hpc$DateTime < date2,]

hist(hpc$Global_active_power, main="Global Active Power",
     xlab="Global Active Power(kilowatts)",
     ylim=c(0,1200), col="red")

# write to png file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
