library(lubridate)

# Load the subFile into an R object
subFile <- "data/household_power_consumption.subset.csv"
data <- read.csv(subFile, sep=";", header=TRUE)

# Add Date_and_Time factor to get the x axis
data$Date_and_Time <- paste(data$Date, data$Time)
data$Date_and_Time <- strptime(data$Date_and_Time,format="%d/%m/%Y %H:%M:%S")

# Plot 
plot(data$Date_and_Time, data$Global_active_power,ylab="Global Active Power (kilowatts)",type = "l",xlab="")

# Once I have checked that the plot is correct, write it into a png file
pngFile <- "data/plot2.png"
dev.copy(png, file = pngFile,  bg = "white")
dev.off()
