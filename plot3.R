# Exploratory Data Analysis
# Course Project 1
# Plot 3 - Energy sub metering

# Read file into a variable
elect_txt <- "household_power_consumption.txt"

# Read file into variable
elect <- read.table(elect_txt, sep = ";", header = TRUE, stringsAsFactors = FALSE, dec=".")

# Subset data to two dates
subset_elect <- elect[elect$Date %in% c("1/2/2007", "2/2/2007"),]

# Create varable for the days selected
datetime <- strptime(paste(subset_elect$Date, subset_elect$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Create variable for all three submeterings a numbers
subMetering1 <- as.numeric(subset_elect$Sub_metering_1)
subMetering2 <- as.numeric(subset_elect$Sub_metering_2)
subMetering3 <- as.numeric(subset_elect$Sub_metering_3)

# Store plot in png device
png("plot3.png", width=480, height=480)

# Plot Graph
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()