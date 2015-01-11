# Plot 1: Histogram
# =================
# Specifications:
# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels. 


# Load the subFile into an R object
subFile <- "data/household_power_consumption.subset.csv"
data <- read.csv(subFile, sep=";", header=TRUE)

# Create the plot and save it into a png file
outFile_png="data/plot1.png"
png(file = outFile_png) ## Open the PNG device. Create plot and send to a file (no plot will appear on the screen:-(
hist(data$Global_active_power,xlab="Global Active Power (kilowats)",main="Global Active Power",col="red",ylim=c(0,1200)) 
dev.off() ## Close the PDF file device
## Now you can view the file on your computer


