# Plot 3: Three series
# ====================

library(lubridate)

# Load the subFile into an R object
subFile <- "data/household_power_consumption.subset.csv"
data <- read.csv(subFile, sep=";", header=TRUE)

# Add Date_and_Time factor to get the x axis
data$Date_and_Time <- paste(data$Date, data$Time)
data$Date_and_Time <- strptime(data$Date_and_Time,format="%d/%m/%Y %H:%M:%S")

# Plot 
plot(data$Date_and_Time, data$Sub_metering_1,ylab="Energy sub meeting",xlab="",type="n")
lines(data$Date_and_Time,data$Sub_metering_1,col="black",ylab="Energy sub meeting",xlab="")
lines(data$Date_and_Time,data$Sub_metering_2,col="red",ylab="Energy sub meeting",xlab="")
lines(data$Date_and_Time,data$Sub_metering_3,col="blue",ylab="Energy sub meeting",xlab="")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5),col=c("black","red","blue"),cex=.6)

# Having doublechecked that the plot is correct, write it into a png file
pngFile <- "plot3.png"
dev.copy(png, file = pngFile,  bg = "white")
dev.off()


