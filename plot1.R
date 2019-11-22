# Exploratory Data Analysis
# Course Project 1
# Plot 1 - Global Active Power

# Read file into a variable
elect_txt <- "household_power_consumption.txt"

# Read txt file into a data table
elect <- read.table(elect_txt, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec="." )

# Subset data to only look at values for February 1, 2007 through February 2, 2007

subset_data <- elect[elect$Date %in% c("1/2/2007", "2/2/2007"),]

# Set global active power as numeric
global_active_power <- as.numeric(subset_data$Global_active_power)

# Set device to png
png("plot1.png", width = 480, height =480)

# Create histogram
hist(global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()

