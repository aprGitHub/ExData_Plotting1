# Background:
# ===========
# When loading the dataset into R, please consider the following:
# The dataset has 2,075,259 rows and 9 columns.
# We will only be using data from the dates 2007-02-01 and 2007-02-02. 
# One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.

# Goal: let the OS sub-set the data:)
# =====
# The aim of this script is to create a file that will only contain the required data from the dates 2007-02-01 and 2007-02-02
## Pre-condition: the data directory is within the working directory and contains the file household_power_consumption.txt
## Post-condition: the file "household_power_consumption.subset.csv" is created in the data directory 
inpFile <- "data/household_power_consumption.txt"
subFile <- "data/household_power_consumption.subset.csv"
command1 <- paste("head -1", inpFile, ">", subFile, sep=" ")
#print(command1)
system(command=command1)
command2 <- paste("grep -E ^0?[12]/0?[^1]?2/2007", inpFile, ">>", subFile, sep=" ")
#print(command2)
system(command=command2)


