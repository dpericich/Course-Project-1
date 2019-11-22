# Exploratory Data Analysis
# Course Project 1
# Plot 2 - Global Active Power

# Read file into a variable
elect_txt <- "household_power_consumption.txt"

# Read file into variable
elect <- read.table(elect_txt, sep = ";", header = TRUE, stringsAsFactors = FALSE, dec=".")

# Subset data to two dates
subset_elect <- elect[elect$Date %in% c("1/2/2007", "2/2/2007"),]

# Create varable for the days selected
datetime <- strptime(paste(subset_elect$Date, subset_elect$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Convert Global Active Power to numeric values
gap <- as.numeric(subset_elect$Global_active_power)

# Set device to save png
png("plot2.png", width=480, height=480)

# Plot graph
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Close device
dev.off()